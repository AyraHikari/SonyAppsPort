.class Lcom/sonyericsson/music/common/ContextMenuBuilder$PopupMenuWrapper;
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
    name = "PopupMenuWrapper"
.end annotation


# instance fields
.field private final mPopupMenu:Landroid/widget/PopupMenu;


# direct methods
.method constructor <init>(Landroid/widget/PopupMenu;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder$PopupMenuWrapper;->mPopupMenu:Landroid/widget/PopupMenu;

    return-void
.end method


# virtual methods
.method public add(IIIIZ)V
    .locals 0

    .line 87
    iget-object p1, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder$PopupMenuWrapper;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const/4 p4, 0x0

    invoke-interface {p1, p4, p2, p4, p3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 88
    invoke-interface {p1, p5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public setHeaderTitle(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
