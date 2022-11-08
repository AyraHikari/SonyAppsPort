.class public Lcom/android/launcher3/anim/PropertyListBuilder;
.super Ljava/lang/Object;
.source "PropertyListBuilder.java"


# instance fields
.field private final mProperties:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/anim/PropertyListBuilder;->mProperties:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public alpha(F)Lcom/android/launcher3/anim/PropertyListBuilder;
    .locals 4
    .param p1, "value"    # F

    .line 44
    iget-object v0, p0, Lcom/android/launcher3/anim/PropertyListBuilder;->mProperties:Ljava/util/ArrayList;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    return-object p0
.end method

.method public build(Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/android/launcher3/anim/PropertyListBuilder;->mProperties:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/animation/PropertyValuesHolder;

    .line 49
    invoke-static {p1, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public scale(F)Lcom/android/launcher3/anim/PropertyListBuilder;
    .locals 1
    .param p1, "value"    # F

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/PropertyListBuilder;->scaleX(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/anim/PropertyListBuilder;->scaleY(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v0

    return-object v0
.end method

.method public scaleX(F)Lcom/android/launcher3/anim/PropertyListBuilder;
    .locals 4
    .param p1, "value"    # F

    .line 27
    iget-object v0, p0, Lcom/android/launcher3/anim/PropertyListBuilder;->mProperties:Ljava/util/ArrayList;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    return-object p0
.end method

.method public scaleY(F)Lcom/android/launcher3/anim/PropertyListBuilder;
    .locals 4
    .param p1, "value"    # F

    .line 32
    iget-object v0, p0, Lcom/android/launcher3/anim/PropertyListBuilder;->mProperties:Ljava/util/ArrayList;

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    return-object p0
.end method

.method public translationX(F)Lcom/android/launcher3/anim/PropertyListBuilder;
    .locals 4
    .param p1, "value"    # F

    .line 17
    iget-object v0, p0, Lcom/android/launcher3/anim/PropertyListBuilder;->mProperties:Ljava/util/ArrayList;

    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    return-object p0
.end method

.method public translationY(F)Lcom/android/launcher3/anim/PropertyListBuilder;
    .locals 4
    .param p1, "value"    # F

    .line 22
    iget-object v0, p0, Lcom/android/launcher3/anim/PropertyListBuilder;->mProperties:Ljava/util/ArrayList;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    return-object p0
.end method
