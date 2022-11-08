.class public Lcom/android/launcher3/dragndrop/AddItemDragLayer;
.super Lcom/android/launcher3/views/BaseDragLayer;
.source "AddItemDragLayer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/views/BaseDragLayer<",
        "Lcom/android/launcher3/dragndrop/AddItemActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 31
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/dragndrop/AddItemDragLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "alphaChannelCount"    # I

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/views/BaseDragLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method


# virtual methods
.method public recreateControllers()V
    .locals 1

    .line 40
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/launcher3/util/TouchController;

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemDragLayer;->mControllers:[Lcom/android/launcher3/util/TouchController;

    .line 41
    return-void
.end method
