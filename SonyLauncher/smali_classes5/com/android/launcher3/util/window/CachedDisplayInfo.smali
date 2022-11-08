.class public Lcom/android/launcher3/util/window/CachedDisplayInfo;
.super Ljava/lang/Object;
.source "CachedDisplayInfo.java"


# instance fields
.field public final cutout:Landroid/graphics/Rect;

.field public final id:Ljava/lang/String;

.field public final rotation:I

.field public final size:Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/util/window/CachedDisplayInfo;-><init>(Landroid/graphics/Point;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Point;I)V
    .locals 2
    .param p1, "size"    # Landroid/graphics/Point;
    .param p2, "rotation"    # I

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const-string v1, ""

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/launcher3/util/window/CachedDisplayInfo;-><init>(Ljava/lang/String;Landroid/graphics/Point;ILandroid/graphics/Rect;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Point;ILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "size"    # Landroid/graphics/Point;
    .param p3, "rotation"    # I
    .param p4, "cutout"    # Landroid/graphics/Rect;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/launcher3/util/window/CachedDisplayInfo;->id:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/android/launcher3/util/window/CachedDisplayInfo;->size:Landroid/graphics/Point;

    .line 49
    iput p3, p0, Lcom/android/launcher3/util/window/CachedDisplayInfo;->rotation:I

    .line 50
    iput-object p4, p0, Lcom/android/launcher3/util/window/CachedDisplayInfo;->cutout:Landroid/graphics/Rect;

    .line 51
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 80
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 81
    :cond_0
    instance-of v1, p1, Lcom/android/launcher3/util/window/CachedDisplayInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 82
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/util/window/CachedDisplayInfo;

    .line 83
    .local v1, "that":Lcom/android/launcher3/util/window/CachedDisplayInfo;
    iget v3, p0, Lcom/android/launcher3/util/window/CachedDisplayInfo;->rotation:I

    iget v4, v1, Lcom/android/launcher3/util/window/CachedDisplayInfo;->rotation:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/util/window/CachedDisplayInfo;->id:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/launcher3/util/window/CachedDisplayInfo;->id:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/util/window/CachedDisplayInfo;->size:Landroid/graphics/Point;

    iget-object v4, v1, Lcom/android/launcher3/util/window/CachedDisplayInfo;->size:Landroid/graphics/Point;

    .line 84
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/util/window/CachedDisplayInfo;->cutout:Landroid/graphics/Rect;

    iget-object v4, v1, Lcom/android/launcher3/util/window/CachedDisplayInfo;->cutout:Landroid/graphics/Rect;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 83
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 90
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/launcher3/util/window/CachedDisplayInfo;->id:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/launcher3/util/window/CachedDisplayInfo;->size:Landroid/graphics/Point;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/launcher3/util/window/CachedDisplayInfo;->rotation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/launcher3/util/window/CachedDisplayInfo;->cutout:Landroid/graphics/Rect;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public normalize()Lcom/android/launcher3/util/window/CachedDisplayInfo;
    .locals 5

    .line 57
    iget v0, p0, Lcom/android/launcher3/util/window/CachedDisplayInfo;->rotation:I

    if-nez v0, :cond_0

    .line 58
    return-object p0

    .line 60
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/launcher3/util/window/CachedDisplayInfo;->size:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    .line 61
    .local v0, "newSize":Landroid/graphics/Point;
    iget v1, p0, Lcom/android/launcher3/util/window/CachedDisplayInfo;->rotation:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/launcher3/util/RotationUtils;->deltaRotation(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/util/RotationUtils;->rotateSize(Landroid/graphics/Point;I)V

    .line 63
    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher3/util/window/CachedDisplayInfo;->cutout:Landroid/graphics/Rect;

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 64
    .local v1, "newCutout":Landroid/graphics/Rect;
    iget v3, p0, Lcom/android/launcher3/util/window/CachedDisplayInfo;->rotation:I

    invoke-static {v3, v2}, Lcom/android/launcher3/util/RotationUtils;->deltaRotation(II)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/launcher3/util/RotationUtils;->rotateRect(Landroid/graphics/Rect;I)V

    .line 65
    new-instance v3, Lcom/android/launcher3/util/window/CachedDisplayInfo;

    iget-object v4, p0, Lcom/android/launcher3/util/window/CachedDisplayInfo;->id:Ljava/lang/String;

    invoke-direct {v3, v4, v0, v2, v1}, Lcom/android/launcher3/util/window/CachedDisplayInfo;-><init>(Ljava/lang/String;Landroid/graphics/Point;ILandroid/graphics/Rect;)V

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CachedDisplayInfo{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/util/window/CachedDisplayInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/util/window/CachedDisplayInfo;->size:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/util/window/CachedDisplayInfo;->rotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cutout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/util/window/CachedDisplayInfo;->cutout:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
