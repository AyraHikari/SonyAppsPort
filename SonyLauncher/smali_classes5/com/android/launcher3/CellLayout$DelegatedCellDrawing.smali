.class public abstract Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DelegatedCellDrawing"
.end annotation


# instance fields
.field public mDelegateCellX:I

.field public mDelegateCellY:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2966
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract drawOverItem(Landroid/graphics/Canvas;)V
.end method

.method public abstract drawUnderItem(Landroid/graphics/Canvas;)V
.end method
