.class Lcom/sonyericsson/music/library/CloudFragment$3;
.super Ljava/lang/Object;
.source "CloudFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/library/CloudFragment;->exit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/library/CloudFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/library/CloudFragment;Landroid/content/Context;)V
    .locals 0

    .line 532
    iput-object p1, p0, Lcom/sonyericsson/music/library/CloudFragment$3;->this$0:Lcom/sonyericsson/music/library/CloudFragment;

    iput-object p2, p0, Lcom/sonyericsson/music/library/CloudFragment$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 535
    iget-object v0, p0, Lcom/sonyericsson/music/library/CloudFragment$3;->this$0:Lcom/sonyericsson/music/library/CloudFragment;

    iget-object v1, p0, Lcom/sonyericsson/music/library/CloudFragment$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/library/CloudFragment;->backgroundExitBecauseOfMissingAccount(Landroid/content/Context;)V

    return-void
.end method
