.class Lcom/sonyericsson/music/ArtistInfoNotifier$GetArtistInfoRunnable;
.super Ljava/lang/Object;
.source "ArtistInfoNotifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/ArtistInfoNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetArtistInfoRunnable"
.end annotation


# instance fields
.field private final mArtistId:J

.field private final mArtistName:Ljava/lang/String;

.field private final mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrackStartedUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/sonyericsson/music/ArtistInfoNotifier;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/ArtistInfoNotifier;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 211
    iput-object p1, p0, Lcom/sonyericsson/music/ArtistInfoNotifier$GetArtistInfoRunnable;->this$0:Lcom/sonyericsson/music/ArtistInfoNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sonyericsson/music/ArtistInfoNotifier$GetArtistInfoRunnable;->mContextRef:Ljava/lang/ref/WeakReference;

    const-string p1, "TRACK_URI"

    .line 214
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 216
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/sonyericsson/music/ArtistInfoNotifier$GetArtistInfoRunnable;->mTrackStartedUri:Landroid/net/Uri;

    const-string p1, "ARTIST_ID"

    const-wide/16 v0, -0x1

    .line 217
    invoke-virtual {p3, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sonyericsson/music/ArtistInfoNotifier$GetArtistInfoRunnable;->mArtistId:J

    const-string p1, "ARTIST_NAME"

    .line 219
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/ArtistInfoNotifier$GetArtistInfoRunnable;->mArtistName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 224
    iget-object v0, p0, Lcom/sonyericsson/music/ArtistInfoNotifier$GetArtistInfoRunnable;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 226
    iget-object v6, p0, Lcom/sonyericsson/music/ArtistInfoNotifier$GetArtistInfoRunnable;->mTrackStartedUri:Landroid/net/Uri;

    if-eqz v6, :cond_0

    .line 227
    iget-object v0, p0, Lcom/sonyericsson/music/ArtistInfoNotifier$GetArtistInfoRunnable;->this$0:Lcom/sonyericsson/music/ArtistInfoNotifier;

    new-instance v7, Lcom/sonyericsson/music/common/ArtistInfo;

    iget-object v3, p0, Lcom/sonyericsson/music/ArtistInfoNotifier$GetArtistInfoRunnable;->mArtistName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/sonyericsson/music/ArtistInfoNotifier$GetArtistInfoRunnable;->mArtistId:J

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/music/common/ArtistInfo;-><init>(Landroid/content/Context;Ljava/lang/String;JLandroid/net/Uri;)V

    const/4 v1, 0x0

    invoke-static {v0, v7, v1}, Lcom/sonyericsson/music/ArtistInfoNotifier;->access$300(Lcom/sonyericsson/music/ArtistInfoNotifier;Lcom/sonyericsson/music/common/ArtistInfo;Z)V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/ArtistInfoNotifier$GetArtistInfoRunnable;->this$0:Lcom/sonyericsson/music/ArtistInfoNotifier;

    invoke-static {v0}, Lcom/sonyericsson/music/ArtistInfoNotifier;->access$000(Lcom/sonyericsson/music/ArtistInfoNotifier;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/ArtistInfoNotifier$GetArtistInfoRunnable;->this$0:Lcom/sonyericsson/music/ArtistInfoNotifier;

    iget-object v1, v1, Lcom/sonyericsson/music/ArtistInfoNotifier;->mGetArtistInfoRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 231
    iget-object v0, p0, Lcom/sonyericsson/music/ArtistInfoNotifier$GetArtistInfoRunnable;->this$0:Lcom/sonyericsson/music/ArtistInfoNotifier;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sonyericsson/music/ArtistInfoNotifier;->mGetArtistInfoRunnable:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method
