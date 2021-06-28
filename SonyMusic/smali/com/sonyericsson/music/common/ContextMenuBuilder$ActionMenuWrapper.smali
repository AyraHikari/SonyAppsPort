.class Lcom/sonyericsson/music/common/ContextMenuBuilder$ActionMenuWrapper;
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
    name = "ActionMenuWrapper"
.end annotation


# instance fields
.field private final mMenu:Lcom/sonyericsson/music/common/ContextMenuBuilder$ActionMenu;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/common/ContextMenuBuilder$ActionMenu;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder$ActionMenuWrapper;->mMenu:Lcom/sonyericsson/music/common/ContextMenuBuilder$ActionMenu;

    return-void
.end method


# virtual methods
.method public add(IIIIZ)V
    .locals 0

    if-eqz p4, :cond_0

    .line 65
    iget-object p1, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder$ActionMenuWrapper;->mMenu:Lcom/sonyericsson/music/common/ContextMenuBuilder$ActionMenu;

    invoke-interface {p1, p2, p3, p4, p5}, Lcom/sonyericsson/music/common/ContextMenuBuilder$ActionMenu;->add(IIIZ)V

    goto :goto_0

    .line 67
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder$ActionMenuWrapper;->mMenu:Lcom/sonyericsson/music/common/ContextMenuBuilder$ActionMenu;

    invoke-interface {p1, p2, p3, p5}, Lcom/sonyericsson/music/common/ContextMenuBuilder$ActionMenu;->add(IIZ)V

    :goto_0
    return-void
.end method

.method public setHeaderTitle(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
