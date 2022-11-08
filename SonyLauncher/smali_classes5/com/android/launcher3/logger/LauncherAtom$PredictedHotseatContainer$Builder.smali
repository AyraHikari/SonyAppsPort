.class public final Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;",
        "Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainerOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 12287
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 12288
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCardinality()Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;
    .locals 1

    .line 12364
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;->copyOnWrite()V

    .line 12365
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->-$$Nest$mclearCardinality(Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;)V

    .line 12366
    return-object p0
.end method

.method public clearIndex()Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;
    .locals 1

    .line 12317
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;->copyOnWrite()V

    .line 12318
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->-$$Nest$mclearIndex(Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;)V

    .line 12319
    return-object p0
.end method

.method public getCardinality()I
    .locals 1

    .line 12342
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->getCardinality()I

    move-result v0

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 12303
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->getIndex()I

    move-result v0

    return v0
.end method

.method public hasCardinality()Z
    .locals 1

    .line 12331
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->hasCardinality()Z

    move-result v0

    return v0
.end method

.method public hasIndex()Z
    .locals 1

    .line 12296
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->hasIndex()Z

    move-result v0

    return v0
.end method

.method public setCardinality(I)Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 12352
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;->copyOnWrite()V

    .line 12353
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->-$$Nest$msetCardinality(Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;I)V

    .line 12354
    return-object p0
.end method

.method public setIndex(I)Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 12309
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;->copyOnWrite()V

    .line 12310
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->-$$Nest$msetIndex(Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;I)V

    .line 12311
    return-object p0
.end method
