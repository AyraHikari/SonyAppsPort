.class Lcom/sonyericsson/music/library/GenresFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "GenresFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/GenresFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/library/GenresFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/library/GenresFragment;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/sonyericsson/music/library/GenresFragment$1;->this$0:Lcom/sonyericsson/music/library/GenresFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    const-string p2, "com.sonyericsson.music.PLAYLIST_ART_UPDATED"

    .line 66
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "com.sonyericsson.music.PLAYLIST_ART_UPDATED_ALL"

    .line 67
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/library/GenresFragment$1;->this$0:Lcom/sonyericsson/music/library/GenresFragment;

    iget-boolean p2, p1, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mViewDestroyed:Z

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    .line 69
    invoke-static {p1, p2}, Lcom/sonyericsson/music/library/GenresFragment;->access$002(Lcom/sonyericsson/music/library/GenresFragment;Z)Z

    goto :goto_1

    .line 71
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/music/library/GenresFragment;->refreshGenreArt()V

    :cond_3
    :goto_1
    return-void
.end method
