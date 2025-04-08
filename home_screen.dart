import 'package:flutter/material.dart';
import 'story_screen.dart';

class HomeScreen extends StatelessWidget {
  final Map<String, Map<String, String>> stories = {
    'Fairy Tales': {
      'content':
          '''The Magic Garden Once upon a time, in a kingdom far away, there was a beautiful garden that could only be seen by those with pure hearts. A young girl named Lily discovered this secret garden after helping a lost bird find its way home. The garden was filled with magical flowers that could sing and glowing butterflies. The garden granted Lily three wishes. She wished for kindness, happiness, and to share her new secret garden with everyone in the kingdom.''',
      'image':
          'https://imgs.search.brave.com/AtI_Q9dFuq_yzJdieQt4z5etLXRT_wX-BQv9RYdJ_b0/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzA1LzU3LzM5LzA3/LzM2MF9GXzU1NzM5/MDcwNF9WMzhubW9Y/T2hrZUlTOE5YNGNV/Y1haRFhBcW5LdmV5/eS5qcGc',
      'audio': 'https://www.example.com/audio/fairy-tales.mp3',
    },
    'Adventures': {
      'content':
          '''Jack and the Lost Treasure Jack was a brave young boy who loved exploring the forest near his home. One day, he stumbled upon an old treasure map hidden inside a dusty book. The map led to a hidden cave deep within the forest, and Jack, with his trusty backpack, set out on a thrilling journey. Along the way, he faced many challenges, from crossing rivers to climbing steep mountains. In the end, Jack found the treasure, which turned out to be a magical stone that could grant a wish. He wished for peace and harmony in the world, and his wish was granted!''',
      'image':
          'https://imgs.search.brave.com/EqQQBur5stNSpyb_VUKDC9E8TXVvF3NOkbhcEpSP-00/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tb25z/dGVydmluZS5jb20v/d3AtY29udGVudC91/cGxvYWRzLzIwMjUv/MDIvVHJpZGVudHMt/VGFsZS1LZXktQXJ0/LmpwZw',
      'audio': 'https://www.example.com/audio/adventures.mp3',
    },
    'Tales of Magic': {
      'content':
          '''The Enchanted Mirror In a faraway land, a young sorceress named Evelina found an enchanted mirror deep in the woods. The mirror could show glimpses of the future, but only to those who proved their bravery. One day, an evil sorcerer cursed the village, bringing darkness and fear. Evelina used the mirror to find the source of the curse and discovered that it was the sorcerer’s dark spell. With her courage and the help of her friends, Evelina was able to break the curse and restore peace to the land.''',
      'image':
          'https://imgs.search.brave.com/TPECxcle1jnCoKw0HJWvFSshK0M9Pf_4dbEmHlHwAUU/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTQx/MjYzNzE1My9waG90/by9tYWdpYy1ib29r/LXdpdGgtb3Blbi1w/YWdlcy1hbmQtYWJz/dHJhY3QtbGlnaHRz/LXNoaW5pbmctaW4t/ZGFya25lc3MtbGl0/ZXJhdHVyZS1hbmQt/ZmFpcnl0YWxlLmpw/Zz9zPTYxMng2MTIm/dz0wJms9MjAmYz1y/YzNCaDc0ZVBYOFFQ/R25PaTVvZUVZT3dG/YUpZc3NlWHU4QTBk/R0ZxUnpJPQ',
      'audio': 'https://www.example.com/audio/tales-of-magic.mp3',
    },
    'Animal Tales': {
      'content':
          '''Ella the Elephant and the Wise Owl Ella, a young elephant, wandered into a forest full of strange sounds and creatures. She soon met a wise old owl who offered her advice. The owl explained that true strength comes from kindness, and Ella learned to help her fellow animals whenever they needed it. One day, a fire broke out in the forest, and Ella bravely helped the animals escape. Thanks to her courage and kindness, Ella became the most beloved creature in the jungle.''',
      'image':
          'https://imgs.search.brave.com/o5w85fbR-jnUebE6KXl-lbtx1xHtyIfnwdi2-i9ya8k/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93ZWxs/dHJhaW5lZG1pbmQu/Y29tL3dwLWNvbnRl/bnQvdXBsb2Fkcy9B/bmltYWwtVGFsZXMu/anBn',
      'audio': 'https://www.example.com/audio/animal-tales.mp3',
    },
    'Religious Tales': {
      'content':
          '''The Miracle of the Bread In a small village, there was a great famine, and the people were struggling to find enough food. A kind old man, known for his wisdom, stood before the villagers and told them to share what little food they had. A young girl named Maria offered her last loaf of bread, and to everyone’s amazement, the bread multiplied. The villagers learned the true meaning of generosity and kindness. From that day, they lived in peace and harmony, knowing that sharing and love could overcome any hardship.''',
      'image':
          'https://imgs.search.brave.com/x2h6wb5L7WCMEH-9AiZdLlpBt4SVtMchqY0cymZwu_0/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NTFMajF1U0Jmc0wu/anBn',
      'audio': 'https://www.example.com/audio/religious-tales.mp3',
    },
    'Tales of the Stupid Ogre (Giant, Devil)': {
      'content':
          '''Gorm the Ogre and the Clever Girl In a dark forest, there lived an ogre named Gorm, who terrorized the nearby village. He was known for his enormous size and bad temper. One day, a clever girl named Lily decided to outwit him. She went to Gorm’s cave and offered him a challenge. “If you can guess the riddle I’m thinking of, I will give you a treasure,” she said. Gorm, thinking he was very clever, accepted. But after many tries, he failed. Lily tricked him into thinking the treasure was buried deep in the forest. Gorm wandered off, and the village was safe once again. Lily’s wit saved the day!''',
      'image':
          'https://imgs.search.brave.com/1QgueRzJEig-wNP222fl9LMBodhJ9e8bt5ngnqMrDj4/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy8y/LzI5L1Nlc3Nlbi1E/b2ppLU9mZmVycy1I/aXMtTGlmZS1PZ3Jl/LU9uaS0xNzY0LVNv/Z2EtU2hvaGFrdS5w/bmc',
      'audio': 'https://www.example.com/audio/tales-of-the-stupid-ogre.mp3',
    },
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bedtime Stories'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: stories.keys.map((category) {
            final story = stories[category];
            return StoryCategoryCard(
              title: category,
              image: story!['image']!,
              context: context,
              storyContent: story['content']!,
              storyAudio: story['audio']!,
            );
          }).toList(),
        ),
      ),
    );
  }
}

class StoryCategoryCard extends StatelessWidget {
  final String title;
  final String image;
  final BuildContext context;
  final String storyContent;
  final String storyAudio;

  StoryCategoryCard({
    required this.title,
    required this.image,
    required this.context,
    required this.storyContent,
    required this.storyAudio,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => StoryScreen(
                storyTitle: title,
                storyContent: storyContent,
                storyImage: image,
                storyAudio: storyAudio,
              ),
            ),
          );
        },
        child: Column(
          children: [
            Image.network(image, fit: BoxFit.cover),
            Text(title),
          ],
        ),
      ),
    );
  }
}
