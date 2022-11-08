.class Lcom/android/launcher3/anim/PropertySetter$1;
.super Lcom/android/launcher3/anim/PropertySetter;
.source "PropertySetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/anim/PropertySetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/launcher3/anim/PropertySetter;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animatorSet"    # Landroid/animation/Animator;

    .line 39
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 40
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 41
    return-void
.end method
