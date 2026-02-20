# ============================================
# DOCKERFILE - Line by Line Explanation
# ============================================

# STEP 1: Base Image choose karo
# "nginx:alpine" ek chhota sa web server hai
# Jaise restaurant mein kitchen hota hai, nginx humara kitchen hai
# "alpine" matlab sabse chhota size (only ~5MB)
FROM nginx:alpine

# STEP 2: Apni website files copy karo server mein
# Left side = humari local files (index.html, style.css)
# Right side = nginx ka default folder jahan se website serve hoti hai
COPY index.html /usr/share/nginx/html/index.html
COPY style.css /usr/share/nginx/html/style.css

# STEP 3: Port expose karo
# Website port 80 pe chalegi (HTTP default port)
# Jaise dukaan ka darwaza khol rahe ho
EXPOSE 80

# STEP 4: Server start karo
# Yeh command nginx server ko start karti hai
# "daemon off" = foreground mein chale (Docker ke liye zaroori)
CMD ["nginx", "-g", "daemon off;"]
