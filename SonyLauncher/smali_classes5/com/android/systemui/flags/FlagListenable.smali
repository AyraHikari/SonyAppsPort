.class public interface abstract Lcom/android/systemui/flags/FlagListenable;
.super Ljava/lang/Object;
.source "FlagListenable.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/flags/FlagListenable$Listener;,
        Lcom/android/systemui/flags/FlagListenable$FlagEvent;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001:\u0002\t\nJ\u001c\u0010\u0002\u001a\u00020\u00032\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/android/systemui/flags/FlagListenable;",
        "",
        "addListener",
        "",
        "flag",
        "Lcom/android/systemui/flags/Flag;",
        "listener",
        "Lcom/android/systemui/flags/FlagListenable$Listener;",
        "removeListener",
        "FlagEvent",
        "Listener",
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


# virtual methods
.method public abstract addListener(Lcom/android/systemui/flags/Flag;Lcom/android/systemui/flags/FlagListenable$Listener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/flags/Flag<",
            "*>;",
            "Lcom/android/systemui/flags/FlagListenable$Listener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract removeListener(Lcom/android/systemui/flags/FlagListenable$Listener;)V
.end method
