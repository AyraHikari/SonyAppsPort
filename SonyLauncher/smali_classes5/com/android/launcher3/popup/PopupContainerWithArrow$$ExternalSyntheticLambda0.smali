.class public final synthetic Lcom/android/launcher3/popup/PopupContainerWithArrow$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/Launcher;

.field public final synthetic f$1:Lcom/android/launcher3/model/data/ItemInfo;

.field public final synthetic f$2:Lcom/android/launcher3/BubbleTextView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/BubbleTextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$$ExternalSyntheticLambda0;->f$1:Lcom/android/launcher3/model/data/ItemInfo;

    iput-object p3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$$ExternalSyntheticLambda0;->f$2:Lcom/android/launcher3/BubbleTextView;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$$ExternalSyntheticLambda0;->f$1:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$$ExternalSyntheticLambda0;->f$2:Lcom/android/launcher3/BubbleTextView;

    check-cast p1, Lcom/android/launcher3/popup/SystemShortcut$Factory;

    invoke-static {v0, v1, v2, p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->lambda$showForIcon$1(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/popup/SystemShortcut$Factory;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p1

    return-object p1
.end method
