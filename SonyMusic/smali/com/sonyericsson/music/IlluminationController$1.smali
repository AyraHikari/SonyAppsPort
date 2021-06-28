.class Lcom/sonyericsson/music/IlluminationController$1;
.super Lcom/sonyericsson/music/player/PlayerStateListener$PlayerStateAdapter;
.source "IlluminationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/IlluminationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/IlluminationController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/IlluminationController;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/sonyericsson/music/IlluminationController$1;->this$0:Lcom/sonyericsson/music/IlluminationController;

    invoke-direct {p0}, Lcom/sonyericsson/music/player/PlayerStateListener$PlayerStateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentTrackColorChanged(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/music/IlluminationController$1;->this$0:Lcom/sonyericsson/music/IlluminationController;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/music/IlluminationController;->access$000(Lcom/sonyericsson/music/IlluminationController;Landroid/app/Activity;Lcom/sonyericsson/music/player/PlayerState;)V

    return-void
.end method

.method public onIsPlayingChanged(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/sonyericsson/music/IlluminationController$1;->this$0:Lcom/sonyericsson/music/IlluminationController;

    invoke-static {v0}, Lcom/sonyericsson/music/IlluminationController;->access$100(Lcom/sonyericsson/music/IlluminationController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/sonyericsson/music/IlluminationController$1;->this$0:Lcom/sonyericsson/music/IlluminationController;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrackColor()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/music/common/UIUtils;->normalizeTrackColor(Landroid/content/Context;I)I

    move-result v0

    .line 61
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/sonyericsson/music/IlluminationController$1;->this$0:Lcom/sonyericsson/music/IlluminationController;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/sonyericsson/music/IlluminationController;->access$200(Lcom/sonyericsson/music/IlluminationController;Landroid/app/Activity;I)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/IlluminationController$1;->this$0:Lcom/sonyericsson/music/IlluminationController;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sonyericsson/music/IlluminationController;->access$300(Lcom/sonyericsson/music/IlluminationController;Landroid/app/Activity;)V

    .line 65
    iget-object p1, p0, Lcom/sonyericsson/music/IlluminationController$1;->this$0:Lcom/sonyericsson/music/IlluminationController;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/sonyericsson/music/IlluminationController;->access$400(Lcom/sonyericsson/music/IlluminationController;Landroid/app/Activity;I)V

    :cond_1
    :goto_0
    return-void
.end method
