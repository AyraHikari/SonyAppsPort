.class public final synthetic Lcom/android/launcher3/anim/Interpolators$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field public final synthetic f$0:Landroid/view/animation/Interpolator;


# direct methods
.method public synthetic constructor <init>(Landroid/view/animation/Interpolator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/anim/Interpolators$$ExternalSyntheticLambda5;->f$0:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/anim/Interpolators$$ExternalSyntheticLambda5;->f$0:Landroid/view/animation/Interpolator;

    invoke-static {v0, p1}, Lcom/android/launcher3/anim/Interpolators;->lambda$reverse$5(Landroid/view/animation/Interpolator;F)F

    move-result p1

    return p1
.end method
