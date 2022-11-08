.class public final Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;
.super Ljava/lang/Object;
.source "UnfoldConstantTranslateAnimator.kt"

# interfaces
.implements Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;,
        Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;,
        Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUnfoldConstantTranslateAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnfoldConstantTranslateAnimator.kt\ncom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,97:1\n1849#2,2:98\n1601#2,9:100\n1849#2:109\n1850#2:111\n1610#2:112\n1#3:110\n*S KotlinDebug\n*F\n+ 1 UnfoldConstantTranslateAnimator.kt\ncom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator\n*L\n61#1:98,2\n71#1:100,9\n71#1:109\n71#1:111\n71#1:112\n71#1:110\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001:\u0003\u0019\u001a\u001bB\u001b\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0016\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0008\u0010\u0011\u001a\u00020\u0010H\u0016J\u0010\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u000bH\u0016J\u0008\u0010\u0014\u001a\u00020\u0010H\u0016J\u001e\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\t2\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0002J\u0010\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u000bH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;",
        "Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;",
        "viewsIdToTranslate",
        "",
        "Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;",
        "progressProvider",
        "Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;",
        "(Ljava/util/Set;Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)V",
        "rootView",
        "Landroid/view/ViewGroup;",
        "translationMax",
        "",
        "viewsToTranslate",
        "",
        "Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;",
        "init",
        "",
        "onTransitionFinished",
        "onTransitionProgress",
        "progress",
        "onTransitionStarted",
        "registerViewsForAnimation",
        "parent",
        "ids",
        "translateViews",
        "Direction",
        "ViewIdToTranslate",
        "ViewToTranslate",
        "frameworks__base__packages__SystemUI__shared__android_common__SystemUISharedLib"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final progressProvider:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

.field private rootView:Landroid/view/ViewGroup;

.field private translationMax:F

.field private final viewsIdToTranslate:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;",
            ">;"
        }
    .end annotation
.end field

.field private viewsToTranslate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)V
    .locals 1
    .param p1, "viewsIdToTranslate"    # Ljava/util/Set;
    .param p2, "progressProvider"    # Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;",
            ">;",
            "Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;",
            ")V"
        }
    .end annotation

    const-string v0, "viewsIdToTranslate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progressProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->viewsIdToTranslate:Ljava/util/Set;

    .line 32
    iput-object p2, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->progressProvider:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    .line 35
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->viewsToTranslate:Ljava/util/List;

    .line 30
    return-void
.end method

.method private final registerViewsForAnimation(Landroid/view/ViewGroup;Ljava/util/Set;)V
    .locals 21
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "ids"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/Set<",
            "Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;",
            ">;)V"
        }
    .end annotation

    .line 70
    nop

    .line 71
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 100
    .local v1, "$i$f$mapNotNull":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 108
    .local v4, "$i$f$mapNotNullTo":I
    move-object v5, v3

    .local v5, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 109
    .local v6, "$i$f$forEach":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    .local v9, "element$iv$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 108
    .local v10, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object v11, v9

    check-cast v11, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;

    .local v11, "$dstr$id$dir$pred":Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;
    const/4 v12, 0x0

    .line 71
    .local v12, "$i$a$-mapNotNull-UnfoldConstantTranslateAnimator$registerViewsForAnimation$1":I
    invoke-virtual {v11}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;->component1()I

    move-result v13

    .local v13, "id":I
    invoke-virtual {v11}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;->component2()Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

    move-result-object v14

    .local v14, "dir":Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;
    invoke-virtual {v11}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;->component3()Lkotlin/jvm/functions/Function0;

    move-result-object v15

    .line 72
    .local v15, "pred":Lkotlin/jvm/functions/Function0;
    move-object/from16 v16, v0

    move-object/from16 v0, p1

    .end local v0    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .local v16, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    if-nez v17, :cond_0

    const/16 v17, 0x0

    move/from16 v19, v1

    move-object/from16 v20, v3

    goto :goto_1

    :cond_0
    move-object/from16 v18, v17

    .local v18, "view":Landroid/view/View;
    const/16 v17, 0x0

    .line 73
    .local v17, "$i$a$-let-UnfoldConstantTranslateAnimator$registerViewsForAnimation$1$1":I
    new-instance v0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;

    move/from16 v19, v1

    .end local v1    # "$i$f$mapNotNull":I
    .local v19, "$i$f$mapNotNull":I
    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object/from16 v20, v3

    move-object/from16 v3, v18

    .end local v18    # "view":Landroid/view/View;
    .local v3, "view":Landroid/view/View;
    .local v20, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    invoke-direct {v1, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v14, v15}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;-><init>(Ljava/lang/ref/WeakReference;Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;Lkotlin/jvm/functions/Function0;)V

    .line 72
    .end local v3    # "view":Landroid/view/View;
    .end local v17    # "$i$a$-let-UnfoldConstantTranslateAnimator$registerViewsForAnimation$1$1":I
    move-object/from16 v17, v0

    .end local v11    # "$dstr$id$dir$pred":Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;
    .end local v12    # "$i$a$-mapNotNull-UnfoldConstantTranslateAnimator$registerViewsForAnimation$1":I
    .end local v13    # "id":I
    .end local v14    # "dir":Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;
    .end local v15    # "pred":Lkotlin/jvm/functions/Function0;
    :goto_1
    if-nez v17, :cond_1

    goto :goto_2

    :cond_1
    move-object/from16 v0, v17

    .line 110
    .local v0, "it$iv$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 108
    .local v1, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v0    # "it$iv$iv":Ljava/lang/Object;
    .end local v1    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    :goto_2
    move-object/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v3, v20

    .end local v8    # "element$iv$iv$iv":Ljava/lang/Object;
    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    goto :goto_0

    .line 111
    .end local v16    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v19    # "$i$f$mapNotNull":I
    .end local v20    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .local v0, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .local v1, "$i$f$mapNotNull":I
    .local v3, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    :cond_2
    move-object/from16 v16, v0

    move/from16 v19, v1

    .line 112
    .end local v0    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$mapNotNull":I
    .end local v5    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$forEach":I
    .restart local v16    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .restart local v19    # "$i$f$mapNotNull":I
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapNotNullTo":I
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    .line 100
    nop

    .line 70
    .end local v16    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v19    # "$i$f$mapNotNull":I
    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->viewsToTranslate:Ljava/util/List;

    .line 76
    return-void
.end method

.method private final translateViews(F)V
    .locals 12
    .param p1, "progress"    # F

    .line 60
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v0, p1, v0

    iget v1, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->translationMax:F

    mul-float/2addr v0, v1

    .line 61
    .local v0, "xTrans":F
    iget-object v1, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->viewsToTranslate:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 98
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;

    .local v5, "$dstr$view$direction$shouldBeAnimated":Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;
    const/4 v6, 0x0

    .line 61
    .local v6, "$i$a$-forEach-UnfoldConstantTranslateAnimator$translateViews$1":I
    invoke-virtual {v5}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;->component1()Ljava/lang/ref/WeakReference;

    move-result-object v7

    .local v7, "view":Ljava/lang/ref/WeakReference;
    invoke-virtual {v5}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;->component2()Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

    move-result-object v8

    .local v8, "direction":Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;
    invoke-virtual {v5}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;->component3()Lkotlin/jvm/functions/Function0;

    move-result-object v9

    .line 62
    .local v9, "shouldBeAnimated":Lkotlin/jvm/functions/Function0;
    invoke-interface {v9}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 63
    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    if-nez v10, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v8}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;->getMultiplier()F

    move-result v11

    mul-float/2addr v11, v0

    invoke-virtual {v10, v11}, Landroid/view/View;->setTranslationX(F)V

    .line 65
    :cond_1
    :goto_1
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    .end local v5    # "$dstr$view$direction$shouldBeAnimated":Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;
    .end local v6    # "$i$a$-forEach-UnfoldConstantTranslateAnimator$translateViews$1":I
    .end local v7    # "view":Ljava/lang/ref/WeakReference;
    .end local v8    # "direction":Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;
    .end local v9    # "shouldBeAnimated":Lkotlin/jvm/functions/Function0;
    goto :goto_0

    .line 99
    :cond_2
    nop

    .line 66
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    return-void
.end method


# virtual methods
.method public final init(Landroid/view/ViewGroup;F)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/ViewGroup;
    .param p2, "translationMax"    # F

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->rootView:Landroid/view/ViewGroup;

    .line 41
    iput p2, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->translationMax:F

    .line 42
    iget-object v0, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->progressProvider:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    invoke-interface {v0, p0}, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;->addCallback(Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public onTransitionFinished()V
    .locals 1

    .line 54
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->translateViews(F)V

    .line 55
    return-void
.end method

.method public onTransitionProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .line 50
    invoke-direct {p0, p1}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->translateViews(F)V

    .line 51
    return-void
.end method

.method public onTransitionStarted()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->rootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const-string v0, "rootView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->viewsIdToTranslate:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->registerViewsForAnimation(Landroid/view/ViewGroup;Ljava/util/Set;)V

    .line 47
    return-void
.end method
