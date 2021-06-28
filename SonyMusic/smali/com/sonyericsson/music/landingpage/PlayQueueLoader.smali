.class Lcom/sonyericsson/music/landingpage/PlayQueueLoader;
.super Lcom/sonyericsson/music/landingpage/CategoryLoader;
.source "PlayQueueLoader.java"


# static fields
.field private static final PLAY_QUEUE_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    .line 16
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "title"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "artist"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "artist_id"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "album_id"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "album"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "track_uri"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "hd_audio"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/music/landingpage/PlayQueueLoader;->PLAY_QUEUE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 24
    invoke-static {p1}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->getPlayqueueContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/music/landingpage/PlayQueueLoader;->PLAY_QUEUE_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/music/landingpage/CategoryLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method
