.class abstract enum Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;
.super Ljava/lang/Enum;
.source "ViewHierarchyAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/animation/ViewHierarchyAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Bound"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$LEFT;,
        Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$TOP;,
        Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$RIGHT;,
        Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$BOTTOM;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u0082\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\rH&J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0005H&R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nj\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;",
        "",
        "label",
        "",
        "overrideTag",
        "",
        "(Ljava/lang/String;ILjava/lang/String;I)V",
        "getLabel",
        "()Ljava/lang/String;",
        "getOverrideTag",
        "()I",
        "getValue",
        "view",
        "Landroid/view/View;",
        "setValue",
        "",
        "value",
        "LEFT",
        "TOP",
        "RIGHT",
        "BOTTOM",
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
.field private static final synthetic $VALUES:[Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

.field public static final enum BOTTOM:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

.field public static final enum LEFT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

.field public static final enum RIGHT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

.field public static final enum TOP:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;


# instance fields
.field private final label:Ljava/lang/String;

.field private final overrideTag:I


# direct methods
.method private static final synthetic $values()[Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    sget-object v1, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->LEFT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->TOP:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->RIGHT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->BOTTOM:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 845
    new-instance v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$LEFT;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$LEFT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->LEFT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    .line 854
    new-instance v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$TOP;

    const-string v1, "TOP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$TOP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->TOP:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    .line 863
    new-instance v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$RIGHT;

    const-string v1, "RIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$RIGHT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->RIGHT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    .line 872
    new-instance v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$BOTTOM;

    const-string v1, "BOTTOM"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$BOTTOM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->BOTTOM:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->$values()[Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->$VALUES:[Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "overrideTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 844
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->label:Ljava/lang/String;

    iput p4, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->overrideTag:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;
    .locals 1

    const-class v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;
    .locals 1

    sget-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->$VALUES:[Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    return-object v0
.end method


# virtual methods
.method public final getLabel()Ljava/lang/String;
    .locals 1

    .line 844
    iget-object v0, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->label:Ljava/lang/String;

    return-object v0
.end method

.method public final getOverrideTag()I
    .locals 1

    .line 844
    iget v0, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->overrideTag:I

    return v0
.end method

.method public abstract getValue(Landroid/view/View;)I
.end method

.method public abstract setValue(Landroid/view/View;I)V
.end method
