import csv
import random
from datetime import datetime, timedelta

# Configurações
NUM_USERS = 100          # Número de utilizadores
NUM_POSTS = 200          # Número de publicações
NUM_INTERACTIONS = 300   # Número de interações (likes e comentários)

# Função para criar utilizadores
def create_users(file_path):
    with open(file_path, 'w', newline='') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(['user_id', 'user_name', 'age', 'location'])  # Cabeçalho
        for i in range(1, NUM_USERS + 1):
            user_id = i
            user_name = f"user{i}"
            age = random.randint(18, 65)
            location = random.choice(['Lisboa', 'Porto', 'Coimbra', 'Braga', 'Faro'])
            writer.writerow([user_id, user_name, age, location])

# Função para criar publicações
def create_posts(file_path):
    start_date = datetime(2024, 1, 1)
    with open(file_path, 'w', newline='') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(['post_id', 'content', 'created_at', 'user_id'])  # Cabeçalho
        for i in range(1, NUM_POSTS + 1):
            post_id = i
            content = f"Post content {i}"
            created_at = (start_date + timedelta(days=random.randint(0, 150))).strftime('%Y-%m-%d')
            user_id = random.randint(1, NUM_USERS)
            writer.writerow([post_id, content, created_at, user_id])

# Função para criar interações (likes e comentários)
def create_interactions(file_path):
    with open(file_path, 'w', newline='') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(['user_id', 'post_id', 'interaction_type', 'comment'])  # Cabeçalho
        for _ in range(NUM_INTERACTIONS):
            user_id = random.randint(1, NUM_USERS)
            post_id = random.randint(1, NUM_POSTS)
            interaction_type = random.choice(['LIKED', 'COMMENTED_ON'])
            comment = f"Comment on post {post_id}" if interaction_type == 'COMMENTED_ON' else ''
            writer.writerow([user_id, post_id, interaction_type, comment])

# Gerar os ficheiros
create_users('users.csv')
create_posts('posts.csv')
create_interactions('interactions.csv')

print("Ficheiros users.csv, posts.csv e interactions.csv criados com sucesso!")
