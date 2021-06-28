.class Lcom/sonyericsson/music/MiniPlayerFragment$8;
.super Ljava/lang/Object;
.source "MiniPlayerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/MiniPlayerFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/MiniPlayerFragment;Landroid/view/View;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment$8;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    iput-object p2, p0, Lcom/sonyericsson/music/MiniPlayerFragment$8;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 481
    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment$8;->val$v:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
