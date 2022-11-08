.class Lcom/android/launcher3/dragndrop/AddItemActivity$1;
.super Landroid/view/View$DragShadowBuilder;
.source "AddItemActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/dragndrop/AddItemActivity;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/dragndrop/AddItemActivity;


# direct methods
.method constructor <init>(Lcom/android/launcher3/dragndrop/AddItemActivity;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/dragndrop/AddItemActivity;
    .param p2, "arg0"    # Landroid/view/View;

    .line 216
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity$1;->this$0:Lcom/android/launcher3/dragndrop/AddItemActivity;

    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 219
    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 1
    .param p1, "outShadowSize"    # Landroid/graphics/Point;
    .param p2, "outShadowTouchPoint"    # Landroid/graphics/Point;

    .line 223
    const/16 v0, 0xa

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Point;->set(II)V

    .line 224
    const/4 v0, 0x5

    invoke-virtual {p2, v0, v0}, Landroid/graphics/Point;->set(II)V

    .line 225
    return-void
.end method
