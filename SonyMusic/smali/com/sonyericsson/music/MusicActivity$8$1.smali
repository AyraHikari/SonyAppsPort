.class Lcom/sonyericsson/music/MusicActivity$8$1;
.super Ljava/lang/Object;
.source "MusicActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/MusicActivity$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/music/MusicActivity$8;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/MusicActivity$8;)V
    .locals 0

    .line 562
    iput-object p1, p0, Lcom/sonyericsson/music/MusicActivity$8$1;->this$1:Lcom/sonyericsson/music/MusicActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 565
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity$8$1;->this$1:Lcom/sonyericsson/music/MusicActivity$8;

    iget-object v0, v0, Lcom/sonyericsson/music/MusicActivity$8;->this$0:Lcom/sonyericsson/music/MusicActivity;

    iget-boolean v1, v0, Lcom/sonyericsson/music/MusicActivity;->mConnectingToDlna:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->isFragmentTransactionAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity$8$1;->this$1:Lcom/sonyericsson/music/MusicActivity$8;

    iget-object v0, v0, Lcom/sonyericsson/music/MusicActivity$8;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object v0

    const-string v1, "loading"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/MusicFragmentManager;->removeFragment(Ljava/lang/String;)V

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity$8$1;->this$1:Lcom/sonyericsson/music/MusicActivity$8;

    iget-object v0, v0, Lcom/sonyericsson/music/MusicActivity$8;->this$0:Lcom/sonyericsson/music/MusicActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sonyericsson/music/MusicActivity;->mConnectingToDlna:Z

    return-void
.end method
