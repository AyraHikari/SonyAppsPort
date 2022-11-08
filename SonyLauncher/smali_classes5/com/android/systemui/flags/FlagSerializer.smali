.class public abstract Lcom/android/systemui/flags/FlagSerializer;
.super Ljava/lang/Object;
.source "FlagSerializer.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFlagSerializer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlagSerializer.kt\ncom/android/systemui/flags/FlagSerializer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,81:1\n1#2:82\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002BG\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u001e\u0010\u0005\u001a\u001a\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00080\u0006\u0012\u0018\u0010\t\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00028\u00000\n\u00a2\u0006\u0002\u0010\u000bJ\u0017\u0010\u000c\u001a\u0004\u0018\u00018\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u000eJ\u0015\u0010\u000f\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0010\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0011R \u0010\t\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00028\u00000\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R&\u0010\u0005\u001a\u001a\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00080\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/android/systemui/flags/FlagSerializer;",
        "T",
        "",
        "type",
        "",
        "setter",
        "Lkotlin/Function3;",
        "Lorg/json/JSONObject;",
        "",
        "getter",
        "Lkotlin/Function2;",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;)V",
        "fromSettingsData",
        "data",
        "(Ljava/lang/String;)Ljava/lang/Object;",
        "toSettingsData",
        "value",
        "(Ljava/lang/Object;)Ljava/lang/String;",
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
.field private final getter:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final setter:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "TT;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "setter"    # Lkotlin/jvm/functions/Function3;
    .param p3, "getter"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lorg/json/JSONObject;",
            "-",
            "Ljava/lang/String;",
            "-TT;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lorg/json/JSONObject;",
            "-",
            "Ljava/lang/String;",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/systemui/flags/FlagSerializer;->type:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/android/systemui/flags/FlagSerializer;->setter:Lkotlin/jvm/functions/Function3;

    .line 33
    iput-object p3, p0, Lcom/android/systemui/flags/FlagSerializer;->getter:Lkotlin/jvm/functions/Function2;

    .line 30
    return-void
.end method


# virtual methods
.method public final fromSettingsData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 51
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_2

    .line 54
    :cond_1
    nop

    .line 55
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 56
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/flags/FlagSerializer;->type:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 57
    iget-object v0, p0, Lcom/android/systemui/flags/FlagSerializer;->getter:Lkotlin/jvm/functions/Function2;

    const-string v2, "value"

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 59
    :cond_2
    nop

    .line 56
    :goto_1
    return-object v0

    .line 61
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Lorg/json/JSONException;
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    const-string v2, "FlagSerializer"

    const-string v3, "read error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    new-instance v1, Lcom/android/systemui/flags/InvalidFlagStorageException;

    invoke-direct {v1}, Lcom/android/systemui/flags/InvalidFlagStorageException;-><init>()V

    throw v1

    .line 52
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_3
    :goto_2
    return-object v0
.end method

.method public final toSettingsData(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 36
    nop

    .line 37
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 38
    const-string v1, "type"

    iget-object v2, p0, Lcom/android/systemui/flags/FlagSerializer;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 39
    move-object v1, v0

    .line 82
    .local v1, "it":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 39
    .local v2, "$i$a$-also-FlagSerializer$toSettingsData$1":I
    iget-object v3, p0, Lcom/android/systemui/flags/FlagSerializer;->setter:Lkotlin/jvm/functions/Function3;

    const-string v4, "it"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "value"

    invoke-interface {v3, v1, v4, p1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .end local v1    # "it":Lorg/json/JSONObject;
    .end local v2    # "$i$a$-also-FlagSerializer$toSettingsData$1":I
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Lorg/json/JSONException;
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    const-string v2, "FlagSerializer"

    const-string v3, "write error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    move-object v0, v1

    .line 36
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-object v0
.end method
