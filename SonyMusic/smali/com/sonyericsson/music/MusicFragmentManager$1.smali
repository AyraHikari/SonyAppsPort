.class Lcom/sonyericsson/music/MusicFragmentManager$1;
.super Ljava/lang/Object;
.source "MusicFragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/MusicFragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/MusicFragmentManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/MusicFragmentManager;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/sonyericsson/music/MusicFragmentManager$1;->this$0:Lcom/sonyericsson/music/MusicFragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/sonyericsson/music/MusicFragmentManager$1;->this$0:Lcom/sonyericsson/music/MusicFragmentManager;

    invoke-static {v0}, Lcom/sonyericsson/music/MusicFragmentManager;->access$000(Lcom/sonyericsson/music/MusicFragmentManager;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
