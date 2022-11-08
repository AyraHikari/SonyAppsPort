.class public final Lcom/android/systemui/animation/RemoteTransitionAdapter;
.super Ljava/lang/Object;
.source "RemoteTransitionAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion;,
        Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0018\u0000 \u00032\u00020\u0001:\u0002\u0003\u0004B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/android/systemui/animation/RemoteTransitionAdapter;",
        "",
        "()V",
        "Companion",
        "CounterRotator",
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
.field public static final Companion:Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/animation/RemoteTransitionAdapter;->Companion:Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final adaptRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/window/RemoteTransition;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/systemui/animation/RemoteTransitionAdapter;->Companion:Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion;

    invoke-virtual {v0, p0}, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion;->adaptRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/window/RemoteTransition;

    move-result-object v0

    return-object v0
.end method

.method public static final adaptRemoteRunner(Landroid/view/IRemoteAnimationRunner;)Landroid/window/IRemoteTransition$Stub;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/systemui/animation/RemoteTransitionAdapter;->Companion:Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion;

    invoke-virtual {v0, p0}, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion;->adaptRemoteRunner(Landroid/view/IRemoteAnimationRunner;)Landroid/window/IRemoteTransition$Stub;

    move-result-object v0

    return-object v0
.end method
