.class public final Lcom/android/systemui/flags/FlagManager$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "FlagManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/flags/FlagManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SettingsObserver"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/android/systemui/flags/FlagManager$SettingsObserver;",
        "Landroid/database/ContentObserver;",
        "(Lcom/android/systemui/flags/FlagManager;)V",
        "onChange",
        "",
        "selfChange",
        "",
        "uri",
        "Landroid/net/Uri;",
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


# instance fields
.field final synthetic this$0:Lcom/android/systemui/flags/FlagManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/flags/FlagManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/flags/FlagManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iput-object p1, p0, Lcom/android/systemui/flags/FlagManager$SettingsObserver;->this$0:Lcom/android/systemui/flags/FlagManager;

    invoke-static {p1}, Lcom/android/systemui/flags/FlagManager;->access$getHandler$p(Lcom/android/systemui/flags/FlagManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 150
    if-nez p2, :cond_0

    .line 151
    return-void

    .line 153
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 154
    .local v0, "parts":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 155
    .local v1, "idStr":Ljava/lang/String;
    :try_start_0
    const-string v2, "idStr"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .local v2, "id":I
    iget-object v3, p0, Lcom/android/systemui/flags/FlagManager$SettingsObserver;->this$0:Lcom/android/systemui/flags/FlagManager;

    invoke-virtual {v3}, Lcom/android/systemui/flags/FlagManager;->getClearCacheAction()Ljava/util/function/Consumer;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 157
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/flags/FlagManager$SettingsObserver;->this$0:Lcom/android/systemui/flags/FlagManager;

    invoke-virtual {v3}, Lcom/android/systemui/flags/FlagManager;->getOnSettingsChangedAction()Ljava/util/function/Consumer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/flags/FlagManager;->dispatchListenersAndMaybeRestart(ILjava/util/function/Consumer;)V

    .line 158
    return-void

    .line 155
    .end local v2    # "id":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/NumberFormatException;
    return-void
.end method
