.class public Lcom/android/launcher3/util/RotationUtils;
.super Ljava/lang/Object;
.source "RotationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deltaRotation(II)I
    .locals 1
    .param p0, "oldRotation"    # I
    .param p1, "newRotation"    # I

    .line 71
    sub-int v0, p1, p0

    .line 72
    .local v0, "delta":I
    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 73
    :cond_0
    return v0
.end method

.method public static rotateRect(Landroid/graphics/Rect;I)V
    .locals 4
    .param p0, "rect"    # Landroid/graphics/Rect;
    .param p1, "rotation"    # I

    .line 35
    packed-switch p1, :pswitch_data_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :pswitch_0
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 46
    return-void

    .line 42
    :pswitch_1
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 43
    return-void

    .line 39
    :pswitch_2
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 40
    return-void

    .line 37
    :pswitch_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static rotateSize(Landroid/graphics/Point;I)V
    .locals 3
    .param p0, "size"    # Landroid/graphics/Point;
    .param p1, "rotation"    # I

    .line 56
    packed-switch p1, :pswitch_data_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :pswitch_0
    iget v0, p0, Landroid/graphics/Point;->y:I

    iget v1, p0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 63
    return-void

    .line 59
    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
