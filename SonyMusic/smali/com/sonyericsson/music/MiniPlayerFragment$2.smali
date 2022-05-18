.class Lcom/sonyericsson/music/MiniPlayerFragment$2;
.super Ljava/lang/Object;
.source "MiniPlayerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/MiniPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/MiniPlayerFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/MiniPlayerFragment;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment$2;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment$2;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    const v1, 0x7f100231

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/sonyericsson/music/MiniPlayerFragment$2;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    invoke-static {v1}, Lcom/sonyericsson/music/MiniPlayerFragment;->access$700(Lcom/sonyericsson/music/MiniPlayerFragment;)Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/music/player/PlayerState$SkipDirection;->NONE:Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->startTransition(Lcom/sonyericsson/music/player/PlayerState$SkipDirection;)V

    .line 153
    iget-object v1, p0, Lcom/sonyericsson/music/MiniPlayerFragment$2;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    invoke-static {v1}, Lcom/sonyericsson/music/MiniPlayerFragment;->access$800(Lcom/sonyericsson/music/MiniPlayerFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment$2;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/MiniPlayerFragment;->access$900(Lcom/sonyericsson/music/MiniPlayerFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment$2;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/MiniPlayerFragment;->setControlsEnabled(Z)V

    return-void
.end method
