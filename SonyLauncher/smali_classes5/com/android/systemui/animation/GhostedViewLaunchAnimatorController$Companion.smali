.class public final Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;
.super Ljava/lang/Object;
.source "GhostedViewLaunchAnimatorController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGhostedViewLaunchAnimatorController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GhostedViewLaunchAnimatorController.kt\ncom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,462:1\n1#2:463\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;",
        "",
        "()V",
        "CORNER_RADIUS_BOTTOM_INDEX",
        "",
        "CORNER_RADIUS_TOP_INDEX",
        "findGradientDrawable",
        "Landroid/graphics/drawable/GradientDrawable;",
        "drawable",
        "Landroid/graphics/drawable/Drawable;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final findGradientDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    instance-of v0, p1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 317
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    return-object v0

    .line 320
    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/InsetDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 321
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 463
    .local v0, "it":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v1, 0x0

    .line 321
    .local v1, "$i$a$-let-GhostedViewLaunchAnimatorController$Companion$findGradientDrawable$1":I
    sget-object v2, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->Companion:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;

    invoke-virtual {v2, v0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;->findGradientDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .end local v0    # "it":Landroid/graphics/drawable/Drawable;
    .end local v1    # "$i$a$-let-GhostedViewLaunchAnimatorController$Companion$findGradientDrawable$1":I
    :goto_0
    return-object v1

    .line 324
    :cond_2
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_4

    .line 325
    const/4 v0, 0x0

    move-object v2, p1

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    :cond_3
    if-ge v0, v2, :cond_4

    move v3, v0

    .local v3, "i":I
    add-int/lit8 v0, v0, 0x1

    .line 326
    move-object v4, p1

    check-cast v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 327
    .local v4, "maybeGradient":Landroid/graphics/drawable/Drawable;
    instance-of v5, v4, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v5, :cond_3

    .line 328
    move-object v0, v4

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    return-object v0

    .line 333
    .end local v3    # "i":I
    .end local v4    # "maybeGradient":Landroid/graphics/drawable/Drawable;
    :cond_4
    return-object v1
.end method
