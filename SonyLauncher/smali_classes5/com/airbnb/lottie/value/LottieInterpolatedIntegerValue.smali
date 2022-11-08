.class public Lcom/airbnb/lottie/value/LottieInterpolatedIntegerValue;
.super Lcom/airbnb/lottie/value/LottieInterpolatedValue;
.source "LottieInterpolatedIntegerValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/value/LottieInterpolatedValue<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "startValue"    # Ljava/lang/Integer;
    .param p2, "endValue"    # Ljava/lang/Integer;

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/value/LottieInterpolatedValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "startValue"    # Ljava/lang/Integer;
    .param p2, "endValue"    # Ljava/lang/Integer;
    .param p3, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/value/LottieInterpolatedValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;)V

    .line 16
    return-void
.end method


# virtual methods
.method public bridge synthetic getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/lottie/value/LottieInterpolatedValue;->getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method interpolateValue(Ljava/lang/Integer;Ljava/lang/Integer;F)Ljava/lang/Integer;
    .locals 2
    .param p1, "startValue"    # Ljava/lang/Integer;
    .param p2, "endValue"    # Ljava/lang/Integer;
    .param p3, "progress"    # F

    .line 19
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1, p3}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(IIF)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic interpolateValue(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 0

    .line 7
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/airbnb/lottie/value/LottieInterpolatedIntegerValue;->interpolateValue(Ljava/lang/Integer;Ljava/lang/Integer;F)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
