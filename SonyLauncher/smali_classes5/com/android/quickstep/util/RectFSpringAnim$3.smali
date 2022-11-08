.class Lcom/android/quickstep/util/RectFSpringAnim$3;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "RectFSpringAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/util/RectFSpringAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Lcom/android/quickstep/util/RectFSpringAnim;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .line 82
    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/android/quickstep/util/RectFSpringAnim;)F
    .locals 1
    .param p1, "object"    # Lcom/android/quickstep/util/RectFSpringAnim;

    .line 85
    invoke-static {p1}, Lcom/android/quickstep/util/RectFSpringAnim;->-$$Nest$fgetmCurrentScaleProgress(Lcom/android/quickstep/util/RectFSpringAnim;)F

    move-result v0

    return v0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 82
    check-cast p1, Lcom/android/quickstep/util/RectFSpringAnim;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/RectFSpringAnim$3;->getValue(Lcom/android/quickstep/util/RectFSpringAnim;)F

    move-result p1

    return p1
.end method

.method public setValue(Lcom/android/quickstep/util/RectFSpringAnim;F)V
    .locals 0
    .param p1, "object"    # Lcom/android/quickstep/util/RectFSpringAnim;
    .param p2, "value"    # F

    .line 90
    invoke-static {p1, p2}, Lcom/android/quickstep/util/RectFSpringAnim;->-$$Nest$fputmCurrentScaleProgress(Lcom/android/quickstep/util/RectFSpringAnim;F)V

    .line 91
    invoke-static {p1}, Lcom/android/quickstep/util/RectFSpringAnim;->-$$Nest$monUpdate(Lcom/android/quickstep/util/RectFSpringAnim;)V

    .line 92
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 82
    check-cast p1, Lcom/android/quickstep/util/RectFSpringAnim;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/util/RectFSpringAnim$3;->setValue(Lcom/android/quickstep/util/RectFSpringAnim;F)V

    return-void
.end method
