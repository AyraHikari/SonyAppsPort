.class public Lcom/android/launcher3/util/WindowBounds;
.super Ljava/lang/Object;
.source "WindowBounds.java"


# instance fields
.field public final availableSize:Landroid/graphics/Point;

.field public final bounds:Landroid/graphics/Rect;

.field public final insets:Landroid/graphics/Rect;

.field public final rotationHint:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "availableWidth"    # I
    .param p4, "availableHeight"    # I
    .param p5, "rotationHint"    # I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    .line 53
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p3, p4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    sub-int v2, p1, p3

    sub-int v3, p2, p4

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/launcher3/util/WindowBounds;->insets:Landroid/graphics/Rect;

    .line 56
    iput p5, p0, Lcom/android/launcher3/util/WindowBounds;->rotationHint:I

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "insets"    # Landroid/graphics/Rect;

    .line 39
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/util/WindowBounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "insets"    # Landroid/graphics/Rect;
    .param p3, "rotationHint"    # I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    .line 44
    iput-object p2, p0, Lcom/android/launcher3/util/WindowBounds;->insets:Landroid/graphics/Rect;

    .line 45
    iput p3, p0, Lcom/android/launcher3/util/WindowBounds;->rotationHint:I

    .line 46
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    .line 48
    return-void
.end method

.method public static fromWindowMetrics(Landroid/view/WindowMetrics;)Lcom/android/launcher3/util/WindowBounds;
    .locals 8
    .param p0, "wm"    # Landroid/view/WindowMetrics;

    .line 94
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 95
    .local v0, "insets":Landroid/graphics/Insets;
    new-instance v1, Lcom/android/launcher3/util/WindowBounds;

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Insets;->left:I

    iget v5, v0, Landroid/graphics/Insets;->top:I

    iget v6, v0, Landroid/graphics/Insets;->right:I

    iget v7, v0, Landroid/graphics/Insets;->bottom:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/util/WindowBounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 66
    instance-of v0, p1, Lcom/android/launcher3/util/WindowBounds;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 67
    return v1

    .line 69
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/util/WindowBounds;

    .line 70
    .local v0, "other":Lcom/android/launcher3/util/WindowBounds;
    iget-object v2, v0, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/launcher3/util/WindowBounds;->insets:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher3/util/WindowBounds;->insets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/launcher3/util/WindowBounds;->insets:Landroid/graphics/Rect;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final isLandscape()Z
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowBounds{bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", insets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/util/WindowBounds;->insets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", availableSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
