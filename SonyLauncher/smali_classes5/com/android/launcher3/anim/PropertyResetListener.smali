.class public Lcom/android/launcher3/anim/PropertyResetListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PropertyResetListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/animation/AnimatorListenerAdapter;"
    }
.end annotation


# instance fields
.field private mPropertyToReset:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "TT;TV;>;"
        }
    .end annotation
.end field

.field private mResetToValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/util/Property;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property<",
            "TT;TV;>;TV;)V"
        }
    .end annotation

    .line 32
    .local p0, "this":Lcom/android/launcher3/anim/PropertyResetListener;, "Lcom/android/launcher3/anim/PropertyResetListener<TT;TV;>;"
    .local p1, "propertyToReset":Landroid/util/Property;, "Landroid/util/Property<TT;TV;>;"
    .local p2, "resetToValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/launcher3/anim/PropertyResetListener;->mPropertyToReset:Landroid/util/Property;

    .line 34
    iput-object p2, p0, Lcom/android/launcher3/anim/PropertyResetListener;->mResetToValue:Ljava/lang/Object;

    .line 35
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 39
    .local p0, "this":Lcom/android/launcher3/anim/PropertyResetListener;, "Lcom/android/launcher3/anim/PropertyResetListener<TT;TV;>;"
    iget-object v0, p0, Lcom/android/launcher3/anim/PropertyResetListener;->mPropertyToReset:Landroid/util/Property;

    move-object v1, p1

    check-cast v1, Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/anim/PropertyResetListener;->mResetToValue:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    return-void
.end method
