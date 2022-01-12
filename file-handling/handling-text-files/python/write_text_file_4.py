# Isaac Computer Science
# Usage licensed under the Open Government Licence v3.0
     

def write_to_file(data):
    """Writes data to a file"""
    with open("playlist.txt", mode = "a") as playlist:
        playlist.write(data)
        playlist.write("\n")
        playlist.close()

def main():
    new_track = "Happy, Pharrell Williams, 3:55"
    write_to_file(new_track)
    new_track = "Reach, S Club 7, 4:02"
    write_to_file(new_track)
    

if __name__ == "__main__":
    main()

    