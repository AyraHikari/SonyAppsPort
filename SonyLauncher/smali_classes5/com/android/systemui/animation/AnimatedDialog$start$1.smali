.class final Lcom/android/systemui/animation/AnimatedDialog$start$1;
.super Ljava/lang/Object;
.source "DialogLaunchAnimator.kt"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/animation/AnimatedDialog;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00012\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00040\u00042\u000e\u0010\u0005\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "Landroid/view/WindowInsets;",
        "kotlin.jvm.PlatformType",
        "view",
        "Landroid/view/View;",
        "windowInsets",
        "onApplyWindowInsets"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/animation/AnimatedDialog$start$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/animation/AnimatedDialog$start$1;

    invoke-direct {v0}, Lcom/android/systemui/animation/AnimatedDialog$start$1;-><init>()V

    sput-object v0, Lcom/android/systemui/animation/AnimatedDialog$start$1;->INSTANCE:Lcom/android/systemui/animation/AnimatedDialog$start$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "windowInsets"    # Landroid/view/WindowInsets;

    .line 476
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 477
    .local v0, "insets":Landroid/graphics/Insets;
    iget v1, v0, Landroid/graphics/Insets;->left:I

    iget v2, v0, Landroid/graphics/Insets;->top:I

    iget v3, v0, Landroid/graphics/Insets;->right:I

    iget v4, v0, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 478
    sget-object v1, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object v1
.end method
