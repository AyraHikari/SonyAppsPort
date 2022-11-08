.class public Lcom/android/launcher3/graphics/TriangleShape;
.super Landroid/graphics/drawable/shapes/PathShape;
.source "TriangleShape.java"


# instance fields
.field private mTriangularPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/graphics/Path;FF)V
    .locals 0
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "stdWidth"    # F
    .param p3, "stdHeight"    # F

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    .line 34
    iput-object p1, p0, Lcom/android/launcher3/graphics/TriangleShape;->mTriangularPath:Landroid/graphics/Path;

    .line 35
    return-void
.end method

.method public static create(FFZ)Lcom/android/launcher3/graphics/TriangleShape;
    .locals 3
    .param p0, "width"    # F
    .param p1, "height"    # F
    .param p2, "isPointingUp"    # Z

    .line 38
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 39
    .local v0, "triangularPath":Landroid/graphics/Path;
    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 40
    invoke-virtual {v0, v2, p1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 41
    invoke-virtual {v0, p0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 42
    div-float v1, p0, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 43
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 46
    div-float v1, p0, v1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 47
    invoke-virtual {v0, p0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 48
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 50
    :goto_0
    new-instance v1, Lcom/android/launcher3/graphics/TriangleShape;

    invoke-direct {v1, v0, p0, p1}, Lcom/android/launcher3/graphics/TriangleShape;-><init>(Landroid/graphics/Path;FF)V

    return-object v1
.end method


# virtual methods
.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1, "outline"    # Landroid/graphics/Outline;

    .line 55
    iget-object v0, p0, Lcom/android/launcher3/graphics/TriangleShape;->mTriangularPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    .line 56
    return-void
.end method
