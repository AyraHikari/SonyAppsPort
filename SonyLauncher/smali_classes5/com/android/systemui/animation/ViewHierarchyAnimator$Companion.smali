.class public final Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;
.super Ljava/lang/Object;
.source "ViewHierarchyAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/animation/ViewHierarchyAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewHierarchyAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewHierarchyAnimator.kt\ncom/android/systemui/animation/ViewHierarchyAnimator$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,886:1\n1849#2,2:887\n1849#2,2:893\n37#3:889\n36#3,3:890\n*S KotlinDebug\n*F\n+ 1 ViewHierarchyAnimator.kt\ncom/android/systemui/animation/ViewHierarchyAnimator$Companion\n*L\n794#1:887,2\n832#1:893,2\n803#1:889\n803#1:890,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015H\u0002J$\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0007H\u0007J(\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u0015H\u0002J8\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u0015H\u0007J$\u0010\u001f\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0007H\u0007J.\u0010 \u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u000e2\u0008\u0008\u0002\u0010!\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0007H\u0007J(\u0010\"\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u0015H\u0002J6\u0010$\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u00152\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0008\u0008\u0002\u0010#\u001a\u00020\u0015H\u0002J \u0010%\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u0015H\u0002J\u0016\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\'\u001a\u00020\u000cH\u0002J\u001f\u0010(\u001a\u0004\u0018\u00010)2\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\'\u001a\u00020\u000cH\u0002\u00a2\u0006\u0002\u0010*J0\u0010+\u001a\u00020\u00152\u0006\u0010,\u001a\u00020)2\u0006\u0010-\u001a\u00020)2\u0006\u0010.\u001a\u00020)2\u0006\u0010/\u001a\u00020)2\u0006\u00100\u001a\u00020)H\u0002JL\u00101\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020)0\u000b2\u0006\u0010!\u001a\u00020\u001d2\u0006\u0010-\u001a\u00020)2\u0006\u0010.\u001a\u00020)2\u0006\u0010/\u001a\u00020)2\u0006\u00100\u001a\u00020)2\u0006\u00102\u001a\u00020)2\u0006\u00103\u001a\u00020)H\u0002J<\u00104\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020)0\u000b2\u0006\u0010!\u001a\u00020\u001d2\u0006\u0010-\u001a\u00020)2\u0006\u0010.\u001a\u00020)2\u0006\u0010/\u001a\u00020)2\u0006\u00100\u001a\u00020)H\u0002Jf\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020)0\u000b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u00106\u001a\u00020)2\u0006\u00107\u001a\u00020)2\u0006\u00108\u001a\u00020)2\u0006\u00109\u001a\u00020)2\u0006\u0010:\u001a\u00020)2\u0006\u0010;\u001a\u00020)2\u0006\u0010<\u001a\u00020)2\u0006\u0010=\u001a\u00020)2\u0006\u0010#\u001a\u00020\u0015H\u0002J\u0010\u0010>\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000eH\u0002J \u0010?\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\'\u001a\u00020\u000c2\u0006\u0010@\u001a\u00020)H\u0002J<\u0010A\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020B2\u0006\u0010!\u001a\u00020\u001d2\u0012\u0010C\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020)0\u000b2\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0007H\u0002J^\u0010D\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000e2\u000c\u0010E\u001a\u0008\u0012\u0004\u0012\u00020\u000c0F2\u0012\u0010G\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020)0\u000b2\u0012\u0010C\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020)0\u000b2\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u0015H\u0002J\u000e\u0010H\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u000eR\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\u000c\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006I"
    }
    d2 = {
        "Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;",
        "",
        "()V",
        "DEFAULT_ADDITION_INTERPOLATOR",
        "Landroid/view/animation/Interpolator;",
        "kotlin.jvm.PlatformType",
        "DEFAULT_DURATION",
        "",
        "DEFAULT_INTERPOLATOR",
        "DEFAULT_REMOVAL_INTERPOLATOR",
        "PROPERTIES",
        "",
        "Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;",
        "Landroid/util/IntProperty;",
        "Landroid/view/View;",
        "addListener",
        "",
        "view",
        "listener",
        "Landroid/view/View$OnLayoutChangeListener;",
        "recursive",
        "",
        "animate",
        "rootView",
        "interpolator",
        "duration",
        "ephemeral",
        "animateAddition",
        "origin",
        "Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;",
        "includeMargins",
        "animateNextUpdate",
        "animateRemoval",
        "destination",
        "createAdditionListener",
        "ignorePreviousValues",
        "createListener",
        "createUpdateListener",
        "createViewProperty",
        "bound",
        "getBound",
        "",
        "(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;)Ljava/lang/Integer;",
        "isVisible",
        "visibility",
        "left",
        "top",
        "right",
        "bottom",
        "processChildEndValuesForRemoval",
        "parentWidth",
        "parentHeight",
        "processEndValuesForRemoval",
        "processStartValues",
        "newLeft",
        "newTop",
        "newRight",
        "newBottom",
        "previousLeft",
        "previousTop",
        "previousRight",
        "previousBottom",
        "recursivelyRemoveListener",
        "setBound",
        "value",
        "shiftChildrenForRemoval",
        "Landroid/view/ViewGroup;",
        "endValues",
        "startAnimation",
        "bounds",
        "",
        "startValues",
        "stopAnimating",
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

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$createViewProperty(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;)Landroid/util/IntProperty;
    .locals 1
    .param p0, "$this"    # Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;
    .param p1, "bound"    # Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    .line 36
    invoke-direct {p0, p1}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->createViewProperty(Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;)Landroid/util/IntProperty;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getBound(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;)Ljava/lang/Integer;
    .locals 1
    .param p0, "$this"    # Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bound"    # Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->getBound(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$isVisible(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;IIIII)Z
    .locals 1
    .param p0, "$this"    # Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;
    .param p1, "visibility"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 36
    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->isVisible(IIIII)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$processStartValues(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;IIIIIIIIZ)Ljava/util/Map;
    .locals 1
    .param p0, "$this"    # Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;
    .param p1, "origin"    # Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;
    .param p2, "newLeft"    # I
    .param p3, "newTop"    # I
    .param p4, "newRight"    # I
    .param p5, "newBottom"    # I
    .param p6, "previousLeft"    # I
    .param p7, "previousTop"    # I
    .param p8, "previousRight"    # I
    .param p9, "previousBottom"    # I
    .param p10, "ignorePreviousValues"    # Z

    .line 36
    invoke-direct/range {p0 .. p10}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->processStartValues(Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;IIIIIIIIZ)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$recursivelyRemoveListener(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;)V
    .locals 0
    .param p0, "$this"    # Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;
    .param p1, "view"    # Landroid/view/View;

    .line 36
    invoke-direct {p0, p1}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->recursivelyRemoveListener(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$setBound(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;I)V
    .locals 0
    .param p0, "$this"    # Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bound"    # Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;
    .param p3, "value"    # I

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->setBound(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;I)V

    return-void
.end method

.method public static final synthetic access$startAnimation(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Landroid/view/animation/Interpolator;JZ)V
    .locals 0
    .param p0, "$this"    # Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bounds"    # Ljava/util/Set;
    .param p3, "startValues"    # Ljava/util/Map;
    .param p4, "endValues"    # Ljava/util/Map;
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p6, "duration"    # J
    .param p8, "ephemeral"    # Z

    .line 36
    invoke-direct/range {p0 .. p8}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->startAnimation(Landroid/view/View;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Landroid/view/animation/Interpolator;JZ)V

    return-void
.end method

.method private final addListener(Landroid/view/View;Landroid/view/View$OnLayoutChangeListener;Z)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "listener"    # Landroid/view/View$OnLayoutChangeListener;
    .param p3, "recursive"    # Z

    .line 739
    sget v0, Lcom/android/systemui/animation/R$id;->tag_layout_listener:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 740
    .local v0, "previousListener":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View$OnLayoutChangeListener;

    if-eqz v1, :cond_0

    .line 741
    move-object v1, v0

    check-cast v1, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 744
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 745
    sget v1, Lcom/android/systemui/animation/R$id;->tag_layout_listener:I

    invoke-virtual {p1, v1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 746
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    .line 747
    const/4 v1, 0x0

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    move v3, v1

    .local v3, "i":I
    add-int/lit8 v1, v1, 0x1

    .line 748
    move-object v4, p1

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "view.getChildAt(i)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-direct {p0, v4, p2, v5}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->addListener(Landroid/view/View;Landroid/view/View$OnLayoutChangeListener;Z)V

    goto :goto_0

    .line 751
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method static synthetic addListener$default(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Landroid/view/View$OnLayoutChangeListener;ZILjava/lang/Object;)V
    .locals 0

    .line 733
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 736
    const/4 p3, 0x0

    .line 733
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->addListener(Landroid/view/View;Landroid/view/View$OnLayoutChangeListener;Z)V

    return-void
.end method

.method private final animate(Landroid/view/View;Landroid/view/animation/Interpolator;JZ)Z
    .locals 6
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "duration"    # J
    .param p5, "ephemeral"    # Z

    .line 106
    nop

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 106
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->isVisible(IIIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x0

    return v0

    .line 117
    :cond_0
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->createUpdateListener(Landroid/view/animation/Interpolator;JZ)Landroid/view/View$OnLayoutChangeListener;

    move-result-object v0

    .line 118
    .local v0, "listener":Landroid/view/View$OnLayoutChangeListener;
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->addListener(Landroid/view/View;Landroid/view/View$OnLayoutChangeListener;Z)V

    .line 119
    return v1
.end method

.method public static synthetic animate$default(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Landroid/view/animation/Interpolator;JILjava/lang/Object;)Z
    .locals 0

    .line 79
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 81
    invoke-static {}, Lcom/android/systemui/animation/ViewHierarchyAnimator;->access$getDEFAULT_INTERPOLATOR$cp()Landroid/view/animation/Interpolator;

    move-result-object p2

    const-string p6, "DEFAULT_INTERPOLATOR"

    invoke-static {p2, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    .line 82
    const-wide/16 p3, 0x1f4

    .line 79
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->animate(Landroid/view/View;Landroid/view/animation/Interpolator;J)Z

    move-result p0

    return p0
.end method

.method public static synthetic animateAddition$default(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Landroid/view/animation/Interpolator;JZILjava/lang/Object;)Z
    .locals 7

    .line 167
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_0

    .line 169
    sget-object p2, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;->CENTER:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    move-object v2, p2

    goto :goto_0

    .line 167
    :cond_0
    move-object v2, p2

    :goto_0
    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_1

    .line 170
    invoke-static {}, Lcom/android/systemui/animation/ViewHierarchyAnimator;->access$getDEFAULT_ADDITION_INTERPOLATOR$cp()Landroid/view/animation/Interpolator;

    move-result-object p3

    const-string p2, "DEFAULT_ADDITION_INTERPOLATOR"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p3

    goto :goto_1

    .line 167
    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_2

    .line 171
    const-wide/16 p4, 0x1f4

    move-wide v4, p4

    goto :goto_2

    .line 167
    :cond_2
    move-wide v4, p4

    :goto_2
    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_3

    .line 172
    const/4 p6, 0x0

    move v6, p6

    goto :goto_3

    .line 167
    :cond_3
    move v6, p6

    :goto_3
    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->animateAddition(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Landroid/view/animation/Interpolator;JZ)Z

    move-result p0

    return p0
.end method

.method public static synthetic animateNextUpdate$default(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Landroid/view/animation/Interpolator;JILjava/lang/Object;)Z
    .locals 0

    .line 92
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 94
    invoke-static {}, Lcom/android/systemui/animation/ViewHierarchyAnimator;->access$getDEFAULT_INTERPOLATOR$cp()Landroid/view/animation/Interpolator;

    move-result-object p2

    const-string p6, "DEFAULT_INTERPOLATOR"

    invoke-static {p2, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    .line 95
    const-wide/16 p3, 0x1f4

    .line 92
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->animateNextUpdate(Landroid/view/View;Landroid/view/animation/Interpolator;J)Z

    move-result p0

    return p0
.end method

.method public static synthetic animateRemoval$default(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Landroid/view/animation/Interpolator;JILjava/lang/Object;)Z
    .locals 6

    .line 310
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    .line 312
    sget-object p2, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;->CENTER:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    move-object v2, p2

    goto :goto_0

    .line 310
    :cond_0
    move-object v2, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    .line 313
    invoke-static {}, Lcom/android/systemui/animation/ViewHierarchyAnimator;->access$getDEFAULT_REMOVAL_INTERPOLATOR$cp()Landroid/view/animation/Interpolator;

    move-result-object p3

    const-string p2, "DEFAULT_REMOVAL_INTERPOLATOR"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p3

    goto :goto_1

    .line 310
    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    .line 314
    const-wide/16 p4, 0x1f4

    move-wide v4, p4

    goto :goto_2

    .line 310
    :cond_2
    move-wide v4, p4

    :goto_2
    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->animateRemoval(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Landroid/view/animation/Interpolator;J)Z

    move-result p0

    return p0
.end method

.method private final createAdditionListener(Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Landroid/view/animation/Interpolator;JZ)Landroid/view/View$OnLayoutChangeListener;
    .locals 7
    .param p1, "origin"    # Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "duration"    # J
    .param p5, "ignorePreviousValues"    # Z

    .line 205
    nop

    .line 206
    nop

    .line 207
    nop

    .line 208
    nop

    .line 209
    nop

    .line 210
    nop

    .line 205
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-object v5, p1

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->createListener(Landroid/view/animation/Interpolator;JZLcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Z)Landroid/view/View$OnLayoutChangeListener;

    move-result-object v0

    return-object v0
.end method

.method private final createListener(Landroid/view/animation/Interpolator;JZLcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Z)Landroid/view/View$OnLayoutChangeListener;
    .locals 8
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p2, "duration"    # J
    .param p4, "ephemeral"    # Z
    .param p5, "origin"    # Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;
    .param p6, "ignorePreviousValues"    # Z

    .line 231
    new-instance v7, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;

    move-object v0, v7

    move-object v1, p5

    move v2, p6

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;-><init>(Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;ZLandroid/view/animation/Interpolator;JZ)V

    check-cast v7, Landroid/view/View$OnLayoutChangeListener;

    return-object v7
.end method

.method static synthetic createListener$default(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/animation/Interpolator;JZLcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;ZILjava/lang/Object;)Landroid/view/View$OnLayoutChangeListener;
    .locals 7

    .line 224
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    .line 228
    const/4 p5, 0x0

    move-object v5, p5

    goto :goto_0

    .line 224
    :cond_0
    move-object v5, p5

    :goto_0
    and-int/lit8 p5, p7, 0x10

    if-eqz p5, :cond_1

    .line 229
    const/4 p6, 0x0

    move v6, p6

    goto :goto_1

    .line 224
    :cond_1
    move v6, p6

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->createListener(Landroid/view/animation/Interpolator;JZLcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Z)Landroid/view/View$OnLayoutChangeListener;

    move-result-object p0

    return-object p0
.end method

.method private final createUpdateListener(Landroid/view/animation/Interpolator;JZ)Landroid/view/View$OnLayoutChangeListener;
    .locals 9
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p2, "duration"    # J
    .param p4, "ephemeral"    # Z

    .line 134
    nop

    .line 135
    nop

    .line 136
    nop

    .line 137
    nop

    .line 134
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-static/range {v0 .. v8}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->createListener$default(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/animation/Interpolator;JZLcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;ZILjava/lang/Object;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object v0

    return-object v0
.end method

.method private final createViewProperty(Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;)Landroid/util/IntProperty;
    .locals 2
    .param p1, "bound"    # Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;",
            ")",
            "Landroid/util/IntProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 52
    invoke-virtual {p1}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->getLabel()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createViewProperty$1;

    invoke-direct {v1, p1, v0}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createViewProperty$1;-><init>(Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;Ljava/lang/String;)V

    check-cast v1, Landroid/util/IntProperty;

    return-object v1
.end method

.method private final getBound(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;)Ljava/lang/Integer;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bound"    # Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    .line 768
    invoke-virtual {p2}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->getOverrideTag()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final isVisible(IIIII)Z
    .locals 1
    .param p1, "visibility"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 490
    if-nez p1, :cond_0

    if-eq p2, p4, :cond_0

    if-eq p3, p5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final processChildEndValuesForRemoval(Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;IIIIII)Ljava/util/Map;
    .locals 11
    .param p1, "destination"    # Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "parentWidth"    # I
    .param p7, "parentHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;",
            "IIIIII)",
            "Ljava/util/Map<",
            "Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 695
    sub-int v0, p4, p2

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 696
    .local v0, "halfWidth":I
    sub-int v2, p5, p3

    div-int/2addr v2, v1

    .line 698
    .local v2, "halfHeight":I
    sget-object v3, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 702
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 701
    :pswitch_0
    sub-int v3, p6, v0

    goto :goto_0

    .line 702
    :pswitch_1
    move v3, p2

    goto :goto_0

    .line 700
    :pswitch_2
    neg-int v3, v0

    goto :goto_0

    .line 699
    :pswitch_3
    div-int/lit8 v3, p6, 0x2

    sub-int/2addr v3, v0

    .line 698
    :goto_0
    nop

    .line 704
    .local v3, "endLeft":I
    sget-object v4, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 709
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 706
    :pswitch_4
    neg-int v4, v2

    goto :goto_1

    .line 709
    :pswitch_5
    move v4, p3

    goto :goto_1

    .line 708
    :pswitch_6
    sub-int v4, p7, v2

    goto :goto_1

    .line 705
    :pswitch_7
    div-int/lit8 v4, p7, 0x2

    sub-int/2addr v4, v2

    .line 704
    :goto_1
    nop

    .line 711
    .local v4, "endTop":I
    sget-object v5, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_2

    .line 715
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 713
    :pswitch_8
    add-int v5, p6, v0

    goto :goto_2

    .line 715
    :pswitch_9
    move v5, p4

    goto :goto_2

    .line 714
    :pswitch_a
    move v5, v0

    goto :goto_2

    .line 712
    :pswitch_b
    div-int/lit8 v5, p6, 0x2

    add-int/2addr v5, v0

    .line 711
    :goto_2
    nop

    .line 717
    .local v5, "endRight":I
    sget-object v6, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_3

    .line 722
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 721
    :pswitch_c
    move v6, v2

    goto :goto_3

    .line 722
    :pswitch_d
    move/from16 v6, p5

    goto :goto_3

    .line 720
    :pswitch_e
    add-int v6, p7, v2

    goto :goto_3

    .line 718
    :pswitch_f
    div-int/lit8 v6, p7, 0x2

    add-int/2addr v6, v2

    .line 717
    :goto_3
    nop

    .line 726
    .local v6, "endBottom":I
    const/4 v7, 0x4

    new-array v7, v7, [Lkotlin/Pair;

    const/4 v8, 0x0

    sget-object v9, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->LEFT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 727
    sget-object v9, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->TOP:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v7, v8

    .line 726
    nop

    .line 728
    sget-object v8, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->RIGHT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    aput-object v8, v7, v1

    .line 726
    const/4 v1, 0x3

    .line 729
    sget-object v8, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->BOTTOM:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    aput-object v8, v7, v1

    .line 726
    nop

    .line 725
    invoke-static {v7}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_e
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private final processEndValuesForRemoval(Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;IIII)Ljava/util/Map;
    .locals 9
    .param p1, "destination"    # Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;",
            "IIII)",
            "Ljava/util/Map<",
            "Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 635
    sget-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    packed-switch v0, :pswitch_data_0

    .line 639
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    move v0, p4

    goto :goto_0

    .line 638
    :pswitch_1
    move v0, p2

    goto :goto_0

    .line 636
    :pswitch_2
    add-int v0, p2, p4

    div-int/2addr v0, v1

    .line 635
    :goto_0
    nop

    .line 641
    .local v0, "endLeft":I
    sget-object v2, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 645
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 644
    :pswitch_3
    move v2, p3

    goto :goto_1

    .line 645
    :pswitch_4
    move v2, p5

    goto :goto_1

    .line 642
    :pswitch_5
    add-int v2, p3, p5

    div-int/2addr v2, v1

    .line 641
    :goto_1
    nop

    .line 647
    .local v2, "endTop":I
    sget-object v3, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_2

    .line 652
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 651
    :pswitch_6
    move v3, p4

    goto :goto_2

    .line 652
    :pswitch_7
    move v3, p2

    goto :goto_2

    .line 648
    :pswitch_8
    add-int v3, p2, p4

    div-int/2addr v3, v1

    .line 647
    :goto_2
    nop

    .line 654
    .local v3, "endRight":I
    sget-object v4, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_3

    .line 659
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    :pswitch_9
    move v4, p3

    goto :goto_3

    .line 658
    :pswitch_a
    move v4, p5

    goto :goto_3

    .line 655
    :pswitch_b
    add-int v4, p3, p5

    div-int/2addr v4, v1

    .line 654
    :goto_3
    nop

    .line 663
    .local v4, "endBottom":I
    const/4 v5, 0x4

    new-array v5, v5, [Lkotlin/Pair;

    const/4 v6, 0x0

    sget-object v7, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->LEFT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 664
    sget-object v7, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->TOP:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    aput-object v7, v5, v6

    .line 663
    nop

    .line 665
    sget-object v6, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->RIGHT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    aput-object v6, v5, v1

    .line 663
    const/4 v1, 0x3

    .line 666
    sget-object v6, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->BOTTOM:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    aput-object v6, v5, v1

    .line 663
    nop

    .line 662
    invoke-static {v5}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_9
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method private final processStartValues(Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;IIIIIIIIZ)Ljava/util/Map;
    .locals 16
    .param p1, "origin"    # Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;
    .param p2, "newLeft"    # I
    .param p3, "newTop"    # I
    .param p4, "newRight"    # I
    .param p5, "newBottom"    # I
    .param p6, "previousLeft"    # I
    .param p7, "previousTop"    # I
    .param p8, "previousRight"    # I
    .param p9, "previousBottom"    # I
    .param p10, "ignorePreviousValues"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;",
            "IIIIIIIIZ)",
            "Ljava/util/Map<",
            "Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 547
    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    if-eqz p10, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move/from16 v4, p6

    .line 548
    .local v4, "startLeft":I
    :goto_0
    if-eqz p10, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move/from16 v5, p7

    .line 549
    .local v5, "startTop":I
    :goto_1
    if-eqz p10, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    move/from16 v6, p8

    .line 550
    .local v6, "startRight":I
    :goto_2
    if-eqz p10, :cond_3

    move v7, v3

    goto :goto_3

    :cond_3
    move/from16 v7, p9

    .line 552
    .local v7, "startBottom":I
    :goto_3
    move v8, v4

    .line 553
    .local v8, "left":I
    move v9, v5

    .line 554
    .local v9, "top":I
    move v10, v6

    .line 555
    .local v10, "right":I
    move v11, v7

    .line 557
    .local v11, "bottom":I
    const/4 v12, 0x2

    if-eqz p1, :cond_4

    .line 558
    sget-object v13, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    .line 562
    new-instance v12, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v12}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v12

    :pswitch_0
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_4

    .line 561
    :pswitch_1
    move v13, v0

    goto :goto_4

    .line 560
    :pswitch_2
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto :goto_4

    .line 559
    :pswitch_3
    add-int v13, v0, v2

    div-int/2addr v13, v12

    .line 558
    :goto_4
    move v8, v13

    .line 567
    sget-object v13, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_1

    .line 571
    new-instance v12, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v12}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v12

    .line 569
    :pswitch_4
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto :goto_5

    .line 570
    :pswitch_5
    move v13, v1

    goto :goto_5

    .line 571
    :pswitch_6
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_5

    .line 568
    :pswitch_7
    add-int v13, v1, v3

    div-int/2addr v13, v12

    .line 567
    :goto_5
    move v9, v13

    .line 576
    sget-object v13, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_2

    .line 583
    new-instance v12, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v12}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v12

    .line 578
    :pswitch_8
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_6

    .line 582
    :pswitch_9
    move v13, v2

    goto :goto_6

    .line 583
    :pswitch_a
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto :goto_6

    .line 577
    :pswitch_b
    add-int v13, v0, v2

    div-int/2addr v13, v12

    .line 576
    :goto_6
    move v10, v13

    .line 585
    sget-object v13, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_3

    .line 592
    new-instance v12, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v12}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v12

    :pswitch_c
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto :goto_7

    .line 591
    :pswitch_d
    move v13, v3

    goto :goto_7

    .line 587
    :pswitch_e
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_7

    .line 586
    :pswitch_f
    add-int v13, v1, v3

    div-int/2addr v13, v12

    .line 585
    :goto_7
    move v11, v13

    .line 597
    :cond_4
    const/4 v13, 0x4

    new-array v13, v13, [Lkotlin/Pair;

    const/4 v14, 0x0

    sget-object v15, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->LEFT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v15, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    aput-object v12, v13, v14

    const/4 v12, 0x1

    .line 598
    sget-object v14, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->TOP:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v14, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v14

    aput-object v14, v13, v12

    .line 597
    nop

    .line 599
    sget-object v12, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->RIGHT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v12, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    const/4 v14, 0x2

    aput-object v12, v13, v14

    .line 597
    const/4 v12, 0x3

    .line 600
    sget-object v14, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->BOTTOM:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v14, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v14

    aput-object v14, v13, v12

    .line 597
    nop

    .line 596
    invoke-static {v13}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v12

    return-object v12

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_e
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private final recursivelyRemoveListener(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .line 754
    sget v0, Lcom/android/systemui/animation/R$id;->tag_layout_listener:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 755
    .local v0, "listener":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View$OnLayoutChangeListener;

    if-eqz v1, :cond_0

    .line 756
    sget v1, Lcom/android/systemui/animation/R$id;->tag_layout_listener:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 757
    move-object v1, v0

    check-cast v1, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 760
    :cond_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 761
    const/4 v1, 0x0

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    move v3, v1

    .local v3, "i":I
    add-int/lit8 v1, v1, 0x1

    .line 762
    move-object v4, p1

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "view.getChildAt(i)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->recursivelyRemoveListener(Landroid/view/View;)V

    goto :goto_0

    .line 765
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method private final setBound(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bound"    # Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;
    .param p3, "value"    # I

    .line 772
    invoke-virtual {p2}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->getOverrideTag()I

    move-result v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 773
    invoke-virtual {p2, p1, p3}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->setValue(Landroid/view/View;I)V

    .line 774
    return-void
.end method

.method private final shiftChildrenForRemoval(Landroid/view/ViewGroup;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Ljava/util/Map;Landroid/view/animation/Interpolator;J)V
    .locals 20
    .param p1, "rootView"    # Landroid/view/ViewGroup;
    .param p2, "destination"    # Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;
    .param p3, "endValues"    # Ljava/util/Map;
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p5, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;",
            "Ljava/util/Map<",
            "Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/view/animation/Interpolator;",
            "J)V"
        }
    .end annotation

    .line 441
    move-object/from16 v0, p3

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    move v4, v3

    .local v4, "i":I
    add-int/lit8 v3, v3, 0x1

    .line 442
    move-object/from16 v5, p1

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 444
    .local v15, "child":Landroid/view/View;
    const/4 v6, 0x4

    new-array v6, v6, [Lkotlin/Pair;

    sget-object v7, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->LEFT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    aput-object v7, v6, v2

    .line 445
    sget-object v7, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->TOP:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 444
    const/4 v7, 0x2

    .line 446
    sget-object v8, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->RIGHT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    aput-object v8, v6, v7

    .line 444
    const/4 v7, 0x3

    .line 447
    sget-object v8, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->BOTTOM:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    aput-object v8, v6, v7

    .line 444
    nop

    .line 443
    invoke-static {v6}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v16

    .line 449
    .local v16, "childStartValues":Ljava/util/Map;
    nop

    .line 450
    nop

    .line 451
    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 452
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v9

    .line 453
    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v10

    .line 454
    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 455
    sget-object v6, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->RIGHT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {v0, v6}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    sget-object v7, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->LEFT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {v0, v7}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    sub-int v12, v6, v7

    .line 456
    sget-object v6, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->BOTTOM:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {v0, v6}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    sget-object v7, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->TOP:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {v0, v7}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    sub-int v13, v6, v7

    .line 449
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    invoke-direct/range {v6 .. v13}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->processChildEndValuesForRemoval(Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;IIIIII)Ljava/util/Map;

    move-result-object v17

    .line 459
    .local v17, "childEndValues":Ljava/util/Map;
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v14, v6

    check-cast v14, Ljava/util/Set;

    .line 460
    .local v14, "boundsToAnimate":Ljava/util/Set;
    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v6

    sget-object v7, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->LEFT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {v0, v7}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    if-eq v6, v7, :cond_0

    sget-object v6, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->LEFT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-interface {v14, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 461
    :cond_0
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v6

    sget-object v7, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->TOP:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {v0, v7}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    if-eq v6, v7, :cond_1

    sget-object v6, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->TOP:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-interface {v14, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 462
    :cond_1
    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v6

    sget-object v7, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->RIGHT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {v0, v7}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    if-eq v6, v7, :cond_2

    sget-object v6, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->RIGHT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-interface {v14, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 463
    :cond_2
    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v6

    sget-object v7, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->BOTTOM:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {v0, v7}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    if-eq v6, v7, :cond_3

    .line 464
    sget-object v6, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->BOTTOM:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-interface {v14, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 467
    :cond_3
    nop

    .line 468
    const-string v6, "child"

    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    nop

    .line 470
    nop

    .line 471
    nop

    .line 472
    nop

    .line 473
    nop

    .line 474
    const/16 v18, 0x1

    .line 467
    move-object/from16 v6, p0

    move-object v7, v15

    move-object v8, v14

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v11, p4

    move-wide/from16 v12, p5

    move-object/from16 v19, v14

    .end local v14    # "boundsToAnimate":Ljava/util/Set;
    .local v19, "boundsToAnimate":Ljava/util/Set;
    move/from16 v14, v18

    invoke-direct/range {v6 .. v14}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->startAnimation(Landroid/view/View;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Landroid/view/animation/Interpolator;JZ)V

    .end local v15    # "child":Landroid/view/View;
    .end local v16    # "childStartValues":Ljava/util/Map;
    .end local v17    # "childEndValues":Ljava/util/Map;
    .end local v19    # "boundsToAnimate":Ljava/util/Set;
    goto/16 :goto_0

    .line 477
    .end local v4    # "i":I
    :cond_4
    move-object/from16 v5, p1

    return-void
.end method

.method private final startAnimation(Landroid/view/View;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Landroid/view/animation/Interpolator;JZ)V
    .locals 17
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bounds"    # Ljava/util/Set;
    .param p3, "startValues"    # Ljava/util/Map;
    .param p4, "endValues"    # Ljava/util/Map;
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p6, "duration"    # J
    .param p8, "ephemeral"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/view/animation/Interpolator;",
            "JZ)V"
        }
    .end annotation

    .line 793
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v3

    move-object v4, v3

    .local v4, "$this$startAnimation_u24lambda_u2d1":Ljava/util/List;
    const/4 v5, 0x0

    .line 794
    .local v5, "$i$a$-buildList-ViewHierarchyAnimator$Companion$startAnimation$propertyValuesHolders$1":I
    move-object v6, v1

    check-cast v6, Ljava/lang/Iterable;

    .local v6, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 887
    .local v7, "$i$f$forEach":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv":Ljava/lang/Object;
    move-object v11, v9

    check-cast v11, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    .local v11, "bound":Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;
    const/4 v12, 0x0

    .line 795
    .local v12, "$i$a$-forEach-ViewHierarchyAnimator$Companion$startAnimation$propertyValuesHolders$1$1":I
    nop

    .line 797
    invoke-static {}, Lcom/android/systemui/animation/ViewHierarchyAnimator;->access$getPROPERTIES$cp()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Property;

    .line 798
    const/4 v14, 0x2

    new-array v14, v14, [I

    invoke-static {v2, v11}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v15

    aput v15, v14, v10

    const/4 v10, 0x1

    .line 799
    move-object/from16 v15, p4

    invoke-static {v15, v11}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Number;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v16

    aput v16, v14, v10

    .line 798
    nop

    .line 796
    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 795
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 802
    nop

    .end local v9    # "element$iv":Ljava/lang/Object;
    .end local v11    # "bound":Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;
    .end local v12    # "$i$a$-forEach-ViewHierarchyAnimator$Companion$startAnimation$propertyValuesHolders$1$1":I
    goto :goto_0

    .line 888
    :cond_0
    move-object/from16 v15, p4

    .line 803
    .end local v6    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$forEach":I
    nop

    .line 793
    .end local v4    # "$this$startAnimation_u24lambda_u2d1":Ljava/util/List;
    .end local v5    # "$i$a$-buildList-ViewHierarchyAnimator$Companion$startAnimation$propertyValuesHolders$1":I
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 803
    nop

    .local v3, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v4, 0x0

    .line 889
    .local v4, "$i$f$toTypedArray":I
    nop

    .line 890
    move-object v5, v3

    .line 892
    .local v5, "thisCollection$iv":Ljava/util/Collection;
    new-array v6, v10, [Landroid/animation/PropertyValuesHolder;

    invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 803
    .end local v3    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v4    # "$i$f$toTypedArray":I
    .end local v5    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v6, [Landroid/animation/PropertyValuesHolder;

    .line 793
    move-object v3, v6

    .line 805
    .local v3, "propertyValuesHolders":[Landroid/animation/PropertyValuesHolder;
    sget v4, Lcom/android/systemui/animation/R$id;->tag_animator:I

    invoke-virtual {v0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Landroid/animation/ObjectAnimator;

    if-eqz v5, :cond_1

    check-cast v4, Landroid/animation/ObjectAnimator;

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 807
    :goto_2
    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/animation/PropertyValuesHolder;

    invoke-static {v0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 808
    .local v4, "animator":Landroid/animation/ObjectAnimator;
    move-object/from16 v5, p5

    check-cast v5, Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 809
    move-wide/from16 v6, p6

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 810
    new-instance v5, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;

    move/from16 v8, p8

    invoke-direct {v5, v0, v1, v8}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;-><init>(Landroid/view/View;Ljava/util/Set;Z)V

    check-cast v5, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 832
    move-object v5, v1

    check-cast v5, Ljava/lang/Iterable;

    .local v5, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 893
    .local v9, "$i$f$forEach":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "element$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    .local v12, "bound":Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;
    const/4 v13, 0x0

    .line 832
    .local v13, "$i$a$-forEach-ViewHierarchyAnimator$Companion$startAnimation$2":I
    sget-object v14, Lcom/android/systemui/animation/ViewHierarchyAnimator;->Companion:Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;

    invoke-static {v2, v12}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Number;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-direct {v14, v0, v12, v1}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->setBound(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;I)V

    move-object/from16 v1, p2

    .end local v11    # "element$iv":Ljava/lang/Object;
    .end local v12    # "bound":Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;
    .end local v13    # "$i$a$-forEach-ViewHierarchyAnimator$Companion$startAnimation$2":I
    goto :goto_3

    .line 894
    :cond_3
    nop

    .line 834
    .end local v5    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$forEach":I
    sget v1, Lcom/android/systemui/animation/R$id;->tag_animator:I

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 835
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 836
    return-void

    .line 892
    .local v3, "$this$toTypedArray$iv":Ljava/util/Collection;
    .local v4, "$i$f$toTypedArray":I
    .local v5, "thisCollection$iv":Ljava/util/Collection;
    :cond_4
    move-wide/from16 v6, p6

    move/from16 v8, p8

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v9, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-direct {v1, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final animate(Landroid/view/View;)Z
    .locals 8

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->animate$default(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Landroid/view/animation/Interpolator;JILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final animate(Landroid/view/View;Landroid/view/animation/Interpolator;)Z
    .locals 8

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interpolator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->animate$default(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Landroid/view/animation/Interpolator;JILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final animate(Landroid/view/View;Landroid/view/animation/Interpolator;J)Z
    .locals 7
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "duration"    # J

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interpolator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->animate(Landroid/view/View;Landroid/view/animation/Interpolator;JZ)Z

    move-result v0

    return v0
.end method

.method public final animateAddition(Landroid/view/View;)Z
    .locals 10

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1e

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v9}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->animateAddition$default(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Landroid/view/animation/Interpolator;JZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final animateAddition(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;)Z
    .locals 10

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "origin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v9}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->animateAddition$default(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Landroid/view/animation/Interpolator;JZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final animateAddition(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Landroid/view/animation/Interpolator;)Z
    .locals 10

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "origin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interpolator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x18

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v9}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->animateAddition$default(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Landroid/view/animation/Interpolator;JZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final animateAddition(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Landroid/view/animation/Interpolator;J)Z
    .locals 10

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "origin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interpolator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-static/range {v1 .. v9}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->animateAddition$default(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Landroid/view/animation/Interpolator;JZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final animateAddition(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Landroid/view/animation/Interpolator;JZ)Z
    .locals 7
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "origin"    # Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;
    .param p3, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p4, "duration"    # J
    .param p6, "includeMargins"    # Z

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "origin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interpolator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    nop

    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 174
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->isVisible(IIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    const/4 v0, 0x0

    return v0

    .line 185
    :cond_0
    nop

    .line 186
    nop

    .line 185
    xor-int/lit8 v6, p6, 0x1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->createAdditionListener(Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Landroid/view/animation/Interpolator;JZ)Landroid/view/View$OnLayoutChangeListener;

    move-result-object v0

    .line 188
    .local v0, "listener":Landroid/view/View$OnLayoutChangeListener;
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->addListener(Landroid/view/View;Landroid/view/View$OnLayoutChangeListener;Z)V

    .line 189
    return v1
.end method

.method public final animateNextUpdate(Landroid/view/View;)Z
    .locals 8

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->animateNextUpdate$default(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Landroid/view/animation/Interpolator;JILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final animateNextUpdate(Landroid/view/View;Landroid/view/animation/Interpolator;)Z
    .locals 8

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interpolator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->animateNextUpdate$default(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Landroid/view/animation/Interpolator;JILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final animateNextUpdate(Landroid/view/View;Landroid/view/animation/Interpolator;J)Z
    .locals 7
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "duration"    # J

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interpolator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->animate(Landroid/view/View;Landroid/view/animation/Interpolator;JZ)Z

    move-result v0

    return v0
.end method

.method public final animateRemoval(Landroid/view/View;)Z
    .locals 9

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v8}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->animateRemoval$default(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Landroid/view/animation/Interpolator;JILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final animateRemoval(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;)Z
    .locals 9

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v8}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->animateRemoval$default(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Landroid/view/animation/Interpolator;JILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final animateRemoval(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Landroid/view/animation/Interpolator;)Z
    .locals 9

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interpolator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v8}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->animateRemoval$default(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Landroid/view/animation/Interpolator;JILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final animateRemoval(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Landroid/view/animation/Interpolator;J)Z
    .locals 23
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "destination"    # Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;
    .param p3, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p4, "duration"    # J

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move-wide/from16 v12, p4

    const-string v0, "rootView"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    move-object/from16 v14, p2

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interpolator"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    nop

    .line 317
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 318
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 319
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 320
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v4

    .line 321
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 316
    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->isVisible(IIIII)Z

    move-result v0

    const/4 v15, 0x0

    if-nez v0, :cond_0

    .line 324
    return v15

    .line 327
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_9

    move-object v8, v0

    check-cast v8, Landroid/view/ViewGroup;

    .line 330
    .local v8, "parent":Landroid/view/ViewGroup;
    nop

    .line 331
    nop

    .line 332
    nop

    .line 333
    nop

    .line 330
    const/4 v6, 0x1

    invoke-direct {v9, v11, v12, v13, v6}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->createUpdateListener(Landroid/view/animation/Interpolator;JZ)Landroid/view/View$OnLayoutChangeListener;

    move-result-object v7

    .line 335
    .local v7, "listener":Landroid/view/View$OnLayoutChangeListener;
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v1, v15

    :goto_0
    if-ge v1, v0, :cond_2

    move v2, v1

    .local v2, "i":I
    add-int/lit8 v1, v1, 0x1

    .line 336
    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 337
    .local v3, "child":Landroid/view/View;
    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 338
    :cond_1
    const-string v4, "child"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v3, v7, v15}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->addListener(Landroid/view/View;Landroid/view/View$OnLayoutChangeListener;Z)V

    .end local v3    # "child":Landroid/view/View;
    goto :goto_0

    .line 343
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 347
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 350
    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/Pair;

    sget-object v1, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->LEFT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v15

    .line 351
    sget-object v1, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->TOP:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v6

    .line 350
    nop

    .line 352
    sget-object v1, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->RIGHT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v5, 0x2

    aput-object v1, v0, v5

    .line 350
    const/4 v1, 0x3

    .line 353
    sget-object v2, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->BOTTOM:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    .line 350
    nop

    .line 349
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v16

    .line 355
    .local v16, "startValues":Ljava/util/Map;
    nop

    .line 356
    nop

    .line 357
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 358
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 359
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v4

    .line 360
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v17

    .line 355
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v15, v5

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->processEndValuesForRemoval(Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;IIII)Ljava/util/Map;

    move-result-object v5

    .line 363
    .local v5, "endValues":Ljava/util/Map;
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v4, v0

    check-cast v4, Ljava/util/Set;

    .line 364
    .local v4, "boundsToAnimate":Ljava/util/Set;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v0

    sget-object v1, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->LEFT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {v5, v1}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_3

    sget-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->LEFT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 365
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v0

    sget-object v1, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->TOP:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {v5, v1}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_4

    sget-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->TOP:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v0

    sget-object v1, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->RIGHT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {v5, v1}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_5

    sget-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->RIGHT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 367
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v0

    sget-object v1, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->BOTTOM:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {v5, v1}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 368
    sget-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->BOTTOM:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_6
    nop

    .line 372
    nop

    .line 373
    nop

    .line 374
    nop

    .line 375
    nop

    .line 376
    nop

    .line 377
    nop

    .line 378
    const/16 v17, 0x1

    .line 371
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    move-object/from16 v3, v16

    move-object/from16 v18, v4

    .end local v4    # "boundsToAnimate":Ljava/util/Set;
    .local v18, "boundsToAnimate":Ljava/util/Set;
    move-object v4, v5

    move-object/from16 v19, v5

    .end local v5    # "endValues":Ljava/util/Map;
    .local v19, "endValues":Ljava/util/Map;
    move-object/from16 v5, p3

    move/from16 v21, v6

    move-object/from16 v20, v7

    .end local v7    # "listener":Landroid/view/View$OnLayoutChangeListener;
    .local v20, "listener":Landroid/view/View$OnLayoutChangeListener;
    move-wide/from16 v6, p4

    move-object/from16 v22, v8

    .end local v8    # "parent":Landroid/view/ViewGroup;
    .local v22, "parent":Landroid/view/ViewGroup;
    move/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->startAnimation(Landroid/view/View;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Landroid/view/animation/Interpolator;JZ)V

    .line 381
    instance-of v0, v10, Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    .line 384
    move-object v1, v10

    check-cast v1, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, v19

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->shiftChildrenForRemoval(Landroid/view/ViewGroup;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Ljava/util/Map;Landroid/view/animation/Interpolator;J)V

    .line 389
    move-object v0, v10

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-array v0, v0, [F

    .line 390
    .local v0, "startAlphas":[F
    move-object v1, v10

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_7

    move v3, v2

    .local v3, "i":I
    add-int/lit8 v2, v2, 0x1

    .line 391
    move-object v4, v10

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    aput v4, v0, v3

    goto :goto_1

    .line 394
    .end local v3    # "i":I
    :cond_7
    new-array v1, v15, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 395
    .local v1, "animator":Landroid/animation/ValueAnimator;
    sget-object v2, Lcom/android/systemui/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    check-cast v2, Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 396
    int-to-long v2, v15

    div-long v2, v12, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 397
    new-instance v2, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$animateRemoval$1;

    invoke-direct {v2, v10, v0}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$animateRemoval$1;-><init>(Landroid/view/View;[F)V

    check-cast v2, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 403
    new-instance v2, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$animateRemoval$2;

    move-object/from16 v3, v22

    .end local v22    # "parent":Landroid/view/ViewGroup;
    .local v3, "parent":Landroid/view/ViewGroup;
    invoke-direct {v2, v10, v12, v13, v3}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$animateRemoval$2;-><init>(Landroid/view/View;JLandroid/view/ViewGroup;)V

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 413
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .end local v0    # "startAlphas":[F
    .end local v1    # "animator":Landroid/animation/ValueAnimator;
    goto :goto_2

    .line 416
    .end local v3    # "parent":Landroid/view/ViewGroup;
    .restart local v22    # "parent":Landroid/view/ViewGroup;
    :cond_8
    move-object/from16 v3, v22

    .end local v22    # "parent":Landroid/view/ViewGroup;
    .restart local v3    # "parent":Landroid/view/ViewGroup;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 417
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 418
    sget-object v1, Lcom/android/systemui/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    check-cast v1, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 419
    int-to-long v1, v15

    div-long v4, v12, v1

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 420
    div-long v1, v12, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 421
    new-instance v1, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$animateRemoval$3;

    invoke-direct {v1, v3, v10}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$animateRemoval$3;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 422
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 425
    :goto_2
    return v21

    .line 327
    .end local v3    # "parent":Landroid/view/ViewGroup;
    .end local v16    # "startValues":Ljava/util/Map;
    .end local v18    # "boundsToAnimate":Ljava/util/Set;
    .end local v19    # "endValues":Ljava/util/Map;
    .end local v20    # "listener":Landroid/view/View$OnLayoutChangeListener;
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final stopAnimating(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-direct {p0, p1}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->recursivelyRemoveListener(Landroid/view/View;)V

    .line 149
    return-void
.end method
