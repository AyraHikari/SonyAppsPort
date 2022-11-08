.class public final synthetic Lcom/android/launcher3/model/data/ItemInfo$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/model/data/ItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/data/ItemInfo$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/model/data/ItemInfo;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/model/data/ItemInfo$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast p1, Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/model/data/ItemInfo;->lambda$buildProto$2$com-android-launcher3-model-data-ItemInfo(Landroid/content/ComponentName;)Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;

    move-result-object p1

    return-object p1
.end method
