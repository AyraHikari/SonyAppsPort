.class Lcom/sonyericsson/music/library/FoldersAdapter$1;
.super Ljava/lang/Object;
.source "FoldersAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/FoldersAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/library/FoldersAdapter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/library/FoldersAdapter;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/sonyericsson/music/library/FoldersAdapter$1;->this$0:Lcom/sonyericsson/music/library/FoldersAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    return-void
.end method
