.class Lcom/sonyericsson/music/MiniPlayerFragment$6;
.super Ljava/lang/Object;
.source "MiniPlayerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/MiniPlayerFragment;->showBufferingSpinner(Z)V
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

    .line 389
    iput-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment$6;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment$6;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/MiniPlayerFragment;->access$1600(Lcom/sonyericsson/music/MiniPlayerFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
