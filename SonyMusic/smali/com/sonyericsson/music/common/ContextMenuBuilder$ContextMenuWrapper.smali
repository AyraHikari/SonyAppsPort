.class Lcom/sonyericsson/music/common/ContextMenuBuilder$ContextMenuWrapper;
.super Ljava/lang/Object;
.source "ContextMenuBuilder.java"

# interfaces
.implements Lcom/sonyericsson/music/common/ContextMenuBuilder$MenuWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/common/ContextMenuBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContextMenuWrapper"
.end annotation


# instance fields
.field private final mContextMenu:Landroid/view/ContextMenu;


# direct methods
.method constructor <init>(Landroid/view/ContextMenu;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder$ContextMenuWrapper;->mContextMenu:Landroid/view/ContextMenu;

    return-void
.end method


# virtual methods
.method public add(IIIIZ)V
    .locals 1

    .line 45
    iget-object p4, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder$ContextMenuWrapper;->mContextMenu:Landroid/view/ContextMenu;

    const/4 v0, 0x0

    invoke-interface {p4, p1, p2, v0, p3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, p5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public setHeaderTitle(Ljava/lang/String;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder$ContextMenuWrapper;->mContextMenu:Landroid/view/ContextMenu;

    invoke-interface {v0, p1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    return-void
.end method
