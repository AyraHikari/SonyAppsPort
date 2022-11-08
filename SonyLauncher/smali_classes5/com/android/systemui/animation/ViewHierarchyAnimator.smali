.class public final Lcom/android/systemui/animation/ViewHierarchyAnimator;
.super Ljava/lang/Object;
.source "ViewHierarchyAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;,
        Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;,
        Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0018\u0000 \u00042\u00020\u0001:\u0003\u0003\u0004\u0005B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/android/systemui/animation/ViewHierarchyAnimator;",
        "",
        "()V",
        "Bound",
        "Companion",
        "Hotspot",
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


# static fields
.field public static final Companion:Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;

.field private static final DEFAULT_ADDITION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final DEFAULT_DURATION:J = 0x1f4L

.field private static final DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final DEFAULT_REMOVAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final PROPERTIES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;",
            "Landroid/util/IntProperty<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator;->Companion:Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;

    .line 39
    sget-object v1, Lcom/android/systemui/animation/Interpolators;->STANDARD:Landroid/view/animation/Interpolator;

    sput-object v1, Lcom/android/systemui/animation/ViewHierarchyAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 40
    sget-object v1, Lcom/android/systemui/animation/Interpolators;->STANDARD_DECELERATE:Landroid/view/animation/Interpolator;

    sput-object v1, Lcom/android/systemui/animation/ViewHierarchyAnimator;->DEFAULT_ADDITION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 41
    sget-object v1, Lcom/android/systemui/animation/Interpolators;->STANDARD_ACCELERATE:Landroid/view/animation/Interpolator;

    sput-object v1, Lcom/android/systemui/animation/ViewHierarchyAnimator;->DEFAULT_REMOVAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 44
    nop

    .line 45
    const/4 v1, 0x4

    new-array v1, v1, [Lkotlin/Pair;

    sget-object v2, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->LEFT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    sget-object v3, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->LEFT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {v0, v3}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->access$createViewProperty(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;)Landroid/util/IntProperty;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 46
    sget-object v2, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->TOP:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    sget-object v3, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->TOP:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {v0, v3}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->access$createViewProperty(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;)Landroid/util/IntProperty;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 45
    nop

    .line 47
    sget-object v2, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->RIGHT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    sget-object v3, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->RIGHT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {v0, v3}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->access$createViewProperty(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;)Landroid/util/IntProperty;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 45
    nop

    .line 48
    sget-object v2, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->BOTTOM:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    sget-object v3, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->BOTTOM:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {v0, v3}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->access$createViewProperty(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;)Landroid/util/IntProperty;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    .line 45
    nop

    .line 44
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator;->PROPERTIES:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDEFAULT_ADDITION_INTERPOLATOR$cp()Landroid/view/animation/Interpolator;
    .locals 1

    .line 35
    sget-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator;->DEFAULT_ADDITION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_INTERPOLATOR$cp()Landroid/view/animation/Interpolator;
    .locals 1

    .line 35
    sget-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_REMOVAL_INTERPOLATOR$cp()Landroid/view/animation/Interpolator;
    .locals 1

    .line 35
    sget-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator;->DEFAULT_REMOVAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public static final synthetic access$getPROPERTIES$cp()Ljava/util/Map;
    .locals 1

    .line 35
    sget-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator;->PROPERTIES:Ljava/util/Map;

    return-object v0
.end method
