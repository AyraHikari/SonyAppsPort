.class public abstract Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;
.super Ljava/lang/Object;
.source "ToolbarControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/ToolbarControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ToolbarScroller"
.end annotation


# instance fields
.field private final mToolbarControl:Lcom/sonyericsson/music/ToolbarControl;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/music/ToolbarControl;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;->mToolbarControl:Lcom/sonyericsson/music/ToolbarControl;

    return-void
.end method


# virtual methods
.method protected getControl()Lcom/sonyericsson/music/ToolbarControl;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;->mToolbarControl:Lcom/sonyericsson/music/ToolbarControl;

    return-object v0
.end method

.method public abstract onScroll(I)V
.end method

.method public abstract onScrollEnd(ZF)V
.end method

.method public abstract onScrollStart()V
.end method

.method public abstract setScrollAllowed(Z)V
.end method
