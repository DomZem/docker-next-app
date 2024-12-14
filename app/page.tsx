import prisma from '@/db';

const getPosts = async () => {
	const posts = await prisma.post.findMany();
	return posts;
};

export default async function Home() {
	const posts = await getPosts();

	return (
		<ul>
			{posts.map((post) => (
				<li key={post.id}>
					<h2>{post.title}</h2>
					<p>{post.content}</p>
				</li>
			))}
		</ul>
	);
}
