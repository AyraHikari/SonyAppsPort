.class public final synthetic Lcom/android/launcher3/model/WellbeingModel$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/pm/LauncherActivityInfo;

    invoke-static {p1}, Lcom/android/launcher3/model/WellbeingModel;->lambda$updateActionsWithRetry$1(Landroid/content/pm/LauncherActivityInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
