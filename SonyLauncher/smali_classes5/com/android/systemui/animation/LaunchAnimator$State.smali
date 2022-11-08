.class public Lcom/android/systemui/animation/LaunchAnimator$State;
.super Ljava/lang/Object;
.source "LaunchAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/animation/LaunchAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u001c\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0016\u0018\u00002\u00020\u0001BA\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\t\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0013\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0010R\u0011\u0010\u0015\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0010R\u0011\u0010\u0017\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u000cR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u000c\"\u0004\u0008\u001a\u0010\u000eR\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u000c\"\u0004\u0008\u001c\u0010\u000eR\u000e\u0010\u001d\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u000c\"\u0004\u0008\u001f\u0010\u000eR\u0014\u0010 \u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\u000cR\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0010\"\u0004\u0008#\u0010\u0012R\u001a\u0010$\u001a\u00020%X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u0011\u0010*\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010\u000c\u00a8\u0006,"
    }
    d2 = {
        "Lcom/android/systemui/animation/LaunchAnimator$State;",
        "",
        "top",
        "",
        "bottom",
        "left",
        "right",
        "topCornerRadius",
        "",
        "bottomCornerRadius",
        "(IIIIFF)V",
        "getBottom",
        "()I",
        "setBottom",
        "(I)V",
        "getBottomCornerRadius",
        "()F",
        "setBottomCornerRadius",
        "(F)V",
        "centerX",
        "getCenterX",
        "centerY",
        "getCenterY",
        "height",
        "getHeight",
        "getLeft",
        "setLeft",
        "getRight",
        "setRight",
        "startTop",
        "getTop",
        "setTop",
        "topChange",
        "getTopChange",
        "getTopCornerRadius",
        "setTopCornerRadius",
        "visible",
        "",
        "getVisible",
        "()Z",
        "setVisible",
        "(Z)V",
        "width",
        "getWidth",
        "frameworks__base__packages__SystemUI__animation__android_common__SystemUIAnimationLib"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private bottom:I

.field private bottomCornerRadius:F

.field private left:I

.field private right:I

.field private final startTop:I

.field private top:I

.field private topCornerRadius:F

.field private visible:Z


# direct methods
.method public constructor <init>()V
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/animation/LaunchAnimator$State;-><init>(IIIIFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIIIFF)V
    .locals 1
    .param p1, "top"    # I
    .param p2, "bottom"    # I
    .param p3, "left"    # I
    .param p4, "right"    # I
    .param p5, "topCornerRadius"    # F
    .param p6, "bottomCornerRadius"    # F

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput p1, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->top:I

    .line 132
    iput p2, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->bottom:I

    .line 133
    iput p3, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->left:I

    .line 134
    iput p4, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->right:I

    .line 136
    iput p5, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->topCornerRadius:F

    .line 137
    iput p6, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->bottomCornerRadius:F

    .line 139
    iput p1, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->startTop:I

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->visible:Z

    .line 129
    return-void
.end method

.method public synthetic constructor <init>(IIIIFFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 129
    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    .line 131
    move p1, v0

    .line 129
    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    .line 132
    move p2, v0

    .line 129
    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    .line 133
    move p3, v0

    .line 129
    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    .line 134
    move p4, v0

    .line 129
    :cond_3
    and-int/lit8 p8, p7, 0x10

    const/4 v0, 0x0

    if-eqz p8, :cond_4

    .line 136
    move p5, v0

    .line 129
    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    .line 137
    move p6, v0

    .line 129
    :cond_5
    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/animation/LaunchAnimator$State;-><init>(IIIIFF)V

    .line 158
    return-void
.end method


# virtual methods
.method public final getBottom()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->bottom:I

    return v0
.end method

.method public final getBottomCornerRadius()F
    .locals 1

    .line 137
    iget v0, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->bottomCornerRadius:F

    return v0
.end method

.method public final getCenterX()F
    .locals 3

    .line 151
    iget v0, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->left:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/animation/LaunchAnimator$State;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public final getCenterY()F
    .locals 3

    .line 154
    iget v0, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/animation/LaunchAnimator$State;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public final getHeight()I
    .locals 2

    .line 145
    iget v0, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->bottom:I

    iget v1, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLeft()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->left:I

    return v0
.end method

.method public final getRight()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->right:I

    return v0
.end method

.method public final getTop()I
    .locals 1

    .line 131
    iget v0, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->top:I

    return v0
.end method

.method public getTopChange()I
    .locals 2

    .line 148
    iget v0, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->top:I

    iget v1, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->startTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getTopCornerRadius()F
    .locals 1

    .line 136
    iget v0, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->topCornerRadius:F

    return v0
.end method

.method public final getVisible()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->visible:Z

    return v0
.end method

.method public final getWidth()I
    .locals 2

    .line 142
    iget v0, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->right:I

    iget v1, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->left:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final setBottom(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 132
    iput p1, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->bottom:I

    return-void
.end method

.method public final setBottomCornerRadius(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 137
    iput p1, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->bottomCornerRadius:F

    return-void
.end method

.method public final setLeft(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 133
    iput p1, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->left:I

    return-void
.end method

.method public final setRight(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 134
    iput p1, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->right:I

    return-void
.end method

.method public final setTop(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 131
    iput p1, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->top:I

    return-void
.end method

.method public final setTopCornerRadius(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 136
    iput p1, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->topCornerRadius:F

    return-void
.end method

.method public final setVisible(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 157
    iput-boolean p1, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->visible:Z

    return-void
.end method
