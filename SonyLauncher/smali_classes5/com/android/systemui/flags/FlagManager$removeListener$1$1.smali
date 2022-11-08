.class final Lcom/android/systemui/flags/FlagManager$removeListener$1$1;
.super Ljava/lang/Object;
.source "FlagManager.kt"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/flags/FlagManager;->removeListener(Lcom/android/systemui/flags/FlagListenable$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/android/systemui/flags/FlagManager$PerFlagListener;",
        "test"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $listener:Lcom/android/systemui/flags/FlagListenable$Listener;


# direct methods
.method constructor <init>(Lcom/android/systemui/flags/FlagListenable$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/flags/FlagManager$removeListener$1$1;->$listener:Lcom/android/systemui/flags/FlagListenable$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Lcom/android/systemui/flags/FlagManager$PerFlagListener;)Z
    .locals 2
    .param p1, "it"    # Lcom/android/systemui/flags/FlagManager$PerFlagListener;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Lcom/android/systemui/flags/FlagManager$PerFlagListener;->getListener()Lcom/android/systemui/flags/FlagListenable$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/flags/FlagManager$removeListener$1$1;->$listener:Lcom/android/systemui/flags/FlagListenable$Listener;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "p0"    # Ljava/lang/Object;

    .line 129
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/flags/FlagManager$PerFlagListener;

    invoke-virtual {p0, v0}, Lcom/android/systemui/flags/FlagManager$removeListener$1$1;->test(Lcom/android/systemui/flags/FlagManager$PerFlagListener;)Z

    move-result v0

    return v0
.end method
