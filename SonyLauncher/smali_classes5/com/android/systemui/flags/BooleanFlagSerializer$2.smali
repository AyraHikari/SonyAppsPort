.class final synthetic Lcom/android/systemui/flags/BooleanFlagSerializer$2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "FlagSerializer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


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
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function2<",
        "Lorg/json/JSONObject;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
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
.field public static final INSTANCE:Lcom/android/systemui/flags/BooleanFlagSerializer$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/flags/BooleanFlagSerializer$2;

    invoke-direct {v0}, Lcom/android/systemui/flags/BooleanFlagSerializer$2;-><init>()V

    sput-object v0, Lcom/android/systemui/flags/BooleanFlagSerializer$2;->INSTANCE:Lcom/android/systemui/flags/BooleanFlagSerializer$2;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    const-class v2, Lorg/json/JSONObject;

    const/4 v1, 0x2

    const-string v3, "getBoolean"

    const-string v4, "getBoolean(Ljava/lang/String;)Z"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "p0"    # Lorg/json/JSONObject;
    .param p2, "p1"    # Ljava/lang/String;

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 71
    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/flags/BooleanFlagSerializer$2;->invoke(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
