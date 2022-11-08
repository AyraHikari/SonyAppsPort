.class public Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;
.super Ljava/lang/Object;
.source "MultiValueAlpha.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/MultiValueAlpha;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlphaProperty"
.end annotation


# instance fields
.field private mConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mMyMask:I

.field private mOthers:F

.field private mValue:F

.field final synthetic this$0:Lcom/android/launcher3/util/MultiValueAlpha;


# direct methods
.method static bridge synthetic -$$Nest$fgetmValue(Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->mValue:F

    return p0
.end method

.method constructor <init>(Lcom/android/launcher3/util/MultiValueAlpha;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/launcher3/util/MultiValueAlpha;
    .param p2, "myMask"    # I

    .line 91
    iput-object p1, p0, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->this$0:Lcom/android/launcher3/util/MultiValueAlpha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->mValue:F

    .line 87
    iput v0, p0, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->mOthers:F

    .line 92
    iput p2, p0, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->mMyMask:I

    .line 93
    return-void
.end method


# virtual methods
.method public animateToValue(F)Landroid/animation/Animator;
    .locals 4
    .param p1, "value"    # F

    .line 146
    sget-object v0, Lcom/android/launcher3/util/MultiValueAlpha;->VALUE:Landroid/util/FloatProperty;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 147
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 148
    return-object v0
.end method

.method public getValue()F
    .locals 1

    .line 126
    iget v0, p0, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->mValue:F

    return v0
.end method

.method public setConsumer(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 130
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Float;>;"
    iput-object p1, p0, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->mConsumer:Ljava/util/function/Consumer;

    .line 131
    if-eqz p1, :cond_0

    .line 132
    iget v0, p0, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->mValue:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 134
    :cond_0
    return-void
.end method

.method public setValue(F)V
    .locals 6
    .param p1, "value"    # F

    .line 96
    iget v0, p0, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->mValue:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 97
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->this$0:Lcom/android/launcher3/util/MultiValueAlpha;

    invoke-static {v0}, Lcom/android/launcher3/util/MultiValueAlpha;->-$$Nest$fgetmValidMask(Lcom/android/launcher3/util/MultiValueAlpha;)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->mMyMask:I

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 102
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->mOthers:F

    .line 103
    iget-object v0, p0, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->this$0:Lcom/android/launcher3/util/MultiValueAlpha;

    invoke-static {v0}, Lcom/android/launcher3/util/MultiValueAlpha;->-$$Nest$fgetmMyProperties(Lcom/android/launcher3/util/MultiValueAlpha;)[Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 104
    .local v3, "prop":Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;
    if-eq v3, p0, :cond_1

    .line 105
    iget v4, p0, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->mOthers:F

    iget v5, v3, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->mValue:F

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->mOthers:F

    .line 103
    .end local v3    # "prop":Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->this$0:Lcom/android/launcher3/util/MultiValueAlpha;

    iget v1, p0, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->mMyMask:I

    invoke-static {v0, v1}, Lcom/android/launcher3/util/MultiValueAlpha;->-$$Nest$fputmValidMask(Lcom/android/launcher3/util/MultiValueAlpha;I)V

    .line 113
    iput p1, p0, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->mValue:F

    .line 115
    iget v0, p0, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->mOthers:F

    mul-float/2addr v0, p1

    .line 116
    .local v0, "alpha":F
    iget-object v1, p0, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->this$0:Lcom/android/launcher3/util/MultiValueAlpha;

    invoke-static {v1}, Lcom/android/launcher3/util/MultiValueAlpha;->-$$Nest$fgetmView(Lcom/android/launcher3/util/MultiValueAlpha;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 117
    iget-object v1, p0, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->this$0:Lcom/android/launcher3/util/MultiValueAlpha;

    invoke-static {v1}, Lcom/android/launcher3/util/MultiValueAlpha;->-$$Nest$fgetmUpdateVisibility(Lcom/android/launcher3/util/MultiValueAlpha;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 118
    iget-object v1, p0, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->this$0:Lcom/android/launcher3/util/MultiValueAlpha;

    invoke-static {v1}, Lcom/android/launcher3/util/MultiValueAlpha;->-$$Nest$fgetmView(Lcom/android/launcher3/util/MultiValueAlpha;)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/anim/AlphaUpdateListener;->updateVisibility(Landroid/view/View;)V

    .line 120
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->mConsumer:Ljava/util/function/Consumer;

    if-eqz v1, :cond_4

    .line 121
    iget v2, p0, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->mValue:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 123
    :cond_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 138
    iget v0, p0, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->mValue:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
