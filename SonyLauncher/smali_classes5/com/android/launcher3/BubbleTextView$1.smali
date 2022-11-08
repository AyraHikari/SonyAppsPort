.class Lcom/android/launcher3/BubbleTextView$1;
.super Landroid/util/Property;
.source "BubbleTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/BubbleTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/android/launcher3/BubbleTextView;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "arg1"    # Ljava/lang/String;

    .line 120
    .local p1, "arg0":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Float;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher3/BubbleTextView;)Ljava/lang/Float;
    .locals 1
    .param p1, "bubbleTextView"    # Lcom/android/launcher3/BubbleTextView;

    .line 123
    iget-object v0, p1, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iget v0, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 120
    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView$1;->get(Lcom/android/launcher3/BubbleTextView;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/android/launcher3/BubbleTextView;Ljava/lang/Float;)V
    .locals 2
    .param p1, "bubbleTextView"    # Lcom/android/launcher3/BubbleTextView;
    .param p2, "value"    # Ljava/lang/Float;

    .line 128
    iget-object v0, p1, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    .line 129
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->invalidate()V

    .line 130
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/launcher3/BubbleTextView;->-$$Nest$fgetmSonyBadgeInfo(Lcom/android/launcher3/BubbleTextView;)Lcom/sonymobile/launcher/badge/SonyBadgeInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 131
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/launcher3/BubbleTextView;->-$$Nest$fputmBadgeText(Lcom/android/launcher3/BubbleTextView;Ljava/lang/String;)V

    .line 133
    :cond_0
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 120
    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/BubbleTextView$1;->set(Lcom/android/launcher3/BubbleTextView;Ljava/lang/Float;)V

    return-void
.end method
