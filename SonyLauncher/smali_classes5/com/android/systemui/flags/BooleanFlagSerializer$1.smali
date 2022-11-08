.class final synthetic Lcom/android/systemui/flags/BooleanFlagSerializer$1;
.super Lkotlin/jvm/internal/AdaptedFunctionReference;
.source "FlagSerializer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/flags/BooleanFlagSerializer;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/AdaptedFunctionReference;",
        "Lkotlin/jvm/functions/Function3<",
        "Lorg/json/JSONObject;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/flags/BooleanFlagSerializer$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/flags/BooleanFlagSerializer$1;

    invoke-direct {v0}, Lcom/android/systemui/flags/BooleanFlagSerializer$1;-><init>()V

    sput-object v0, Lcom/android/systemui/flags/BooleanFlagSerializer$1;->INSTANCE:Lcom/android/systemui/flags/BooleanFlagSerializer$1;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    const-class v2, Lorg/json/JSONObject;

    const/4 v1, 0x3

    const-string v3, "put"

    const-string v4, "put(Ljava/lang/String;Z)Lorg/json/JSONObject;"

    const/16 v5, 0x8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;

    .line 70
    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    move-object v2, p3

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/flags/BooleanFlagSerializer$1;->invoke(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lorg/json/JSONObject;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "p0"    # Lorg/json/JSONObject;
    .param p2, "p1"    # Ljava/lang/String;
    .param p3, "p2"    # Z

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-static {p1, p2, p3}, Lcom/android/systemui/flags/BooleanFlagSerializer;->access$_init_$put(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    return-void
.end method
