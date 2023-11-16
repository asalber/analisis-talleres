using Makie

# Define the sequences
n = 1:100  # Define a range for n
sequence1 = 1 ./ n
sequence2 = sin.(n) ./ n

# Create the plot
fig = Figure()
ax = Axis(fig[1, 1], title = "Scatter Plot of Sequences 1/n and sin(n)/n")

# Scatter plot for 1/n
scatter!(ax, n, sequence1, color = :blue, label = "1/n")

# Scatter plot for sin(n)/n
scatter!(ax, n, sequence2, color = :red, label = "sin(n)/n")

# Show legend
Legend(fig[2, 1], ax, "Sequences")

# Show the figure
fig
