.class Lcom/sonyericsson/music/library/GenreFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "GenreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/GenreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/library/GenreFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/library/GenreFragment;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/sonyericsson/music/library/GenreFragment$1;->this$0:Lcom/sonyericsson/music/library/GenreFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 107
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    const-string p2, "com.sonyericsson.music.PLAYLIST_ART_UPDATED"

    .line 109
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "com.sonyericsson.music.PLAYLIST_ART_UPDATED_ALL"

    .line 110
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 111
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/library/GenreFragment$1;->this$0:Lcom/sonyericsson/music/library/GenreFragment;

    invoke-static {p1}, Lcom/sonyericsson/music/library/GenreFragment;->access$000(Lcom/sonyericsson/music/library/GenreFragment;)V

    :cond_2
    return-void
.end method
