.class public abstract Lcom/android/launcher3/anim/PropertySetter;
.super Ljava/lang/Object;
.source "PropertySetter.java"


# static fields
.field public static final NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

.field protected static final NO_OP:Landroid/animation/AnimatorSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/android/launcher3/anim/PropertySetter$1;

    invoke-direct {v0}, Lcom/android/launcher3/anim/PropertySetter$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    .line 44
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/PropertySetter;->NO_OP:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract add(Landroid/animation/Animator;)V
.end method

.method public addEndListener(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 100
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 101
    return-void
.end method

.method public buildAnim()Landroid/animation/AnimatorSet;
    .locals 1

    .line 108
    sget-object v0, Lcom/android/launcher3/anim/PropertySetter;->NO_OP:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method public setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .locals 1
    .param p3, "value"    # F
    .param p4, "interpolator"    # Landroid/animation/TimeInterpolator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/FloatProperty<",
            "TT;>;F",
            "Landroid/animation/TimeInterpolator;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .line 77
    .local p1, "target":Ljava/lang/Object;, "TT;"
    .local p2, "property":Landroid/util/FloatProperty;, "Landroid/util/FloatProperty<TT;>;"
    invoke-virtual {p2, p1, p3}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    .line 78
    sget-object v0, Lcom/android/launcher3/anim/PropertySetter;->NO_OP:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method public setInt(Ljava/lang/Object;Landroid/util/IntProperty;ILandroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .locals 1
    .param p3, "value"    # I
    .param p4, "interpolator"    # Landroid/animation/TimeInterpolator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/IntProperty<",
            "TT;>;I",
            "Landroid/animation/TimeInterpolator;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .line 87
    .local p1, "target":Ljava/lang/Object;, "TT;"
    .local p2, "property":Landroid/util/IntProperty;, "Landroid/util/IntProperty<TT;>;"
    invoke-virtual {p2, p1, p3}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 88
    sget-object v0, Lcom/android/launcher3/anim/PropertySetter;->NO_OP:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method public setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "alpha"    # F
    .param p3, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 53
    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 55
    invoke-static {p1}, Lcom/android/launcher3/anim/AlphaUpdateListener;->updateVisibility(Landroid/view/View;)V

    .line 57
    :cond_0
    sget-object v0, Lcom/android/launcher3/anim/PropertySetter;->NO_OP:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method public setViewBackgroundColor(Landroid/view/View;ILandroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "color"    # I
    .param p3, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 65
    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 68
    :cond_0
    sget-object v0, Lcom/android/launcher3/anim/PropertySetter;->NO_OP:Landroid/animation/AnimatorSet;

    return-object v0
.end method
