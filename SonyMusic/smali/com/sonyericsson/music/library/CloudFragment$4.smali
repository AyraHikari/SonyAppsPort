.class Lcom/sonyericsson/music/library/CloudFragment$4;
.super Ljava/lang/Object;
.source "CloudFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/library/CloudFragment;->handleAuthorizeFailed(I)V
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

    .line 576
    iput-object p1, p0, Lcom/sonyericsson/music/library/CloudFragment$4;->this$0:Lcom/sonyericsson/music/library/CloudFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 579
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudFragment$4;->this$0:Lcom/sonyericsson/music/library/CloudFragment;

    invoke-virtual {p1}, Lcom/sonyericsson/music/library/CloudFragment;->authorizeAccount()V

    return-void
.end method
