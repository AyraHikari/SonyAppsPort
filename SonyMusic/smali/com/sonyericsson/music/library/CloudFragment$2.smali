.class Lcom/sonyericsson/music/library/CloudFragment$2;
.super Ljava/lang/Object;
.source "CloudFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/library/CloudFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/library/CloudFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/library/CloudFragment;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/sonyericsson/music/library/CloudFragment$2;->this$0:Lcom/sonyericsson/music/library/CloudFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/sonyericsson/music/library/CloudFragment$2;->this$0:Lcom/sonyericsson/music/library/CloudFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/CloudFragment;->exit()V

    return-void
.end method
