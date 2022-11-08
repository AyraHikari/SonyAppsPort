.class public final Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$FolderIconOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;",
        "Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$FolderIconOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 10242
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 10243
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCardinality()Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;
    .locals 1

    .line 10288
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->copyOnWrite()V

    .line 10289
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->-$$Nest$mclearCardinality(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;)V

    .line 10290
    return-object p0
.end method

.method public clearFromLabelState()Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;
    .locals 1

    .line 10335
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->copyOnWrite()V

    .line 10336
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->-$$Nest$mclearFromLabelState(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;)V

    .line 10337
    return-object p0
.end method

.method public clearLabelInfo()Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;
    .locals 1

    .line 10447
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->copyOnWrite()V

    .line 10448
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->-$$Nest$mclearLabelInfo(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;)V

    .line 10449
    return-object p0
.end method

.method public clearToLabelState()Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;
    .locals 1

    .line 10382
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->copyOnWrite()V

    .line 10383
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->-$$Nest$mclearToLabelState(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;)V

    .line 10384
    return-object p0
.end method

.method public getCardinality()I
    .locals 1

    .line 10266
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->getCardinality()I

    move-result v0

    return v0
.end method

.method public getFromLabelState()Lcom/android/launcher3/logger/LauncherAtom$FromState;
    .locals 1

    .line 10313
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->getFromLabelState()Lcom/android/launcher3/logger/LauncherAtom$FromState;

    move-result-object v0

    return-object v0
.end method

.method public getLabelInfo()Ljava/lang/String;
    .locals 1

    .line 10409
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->getLabelInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabelInfoBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10422
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->getLabelInfoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getToLabelState()Lcom/android/launcher3/logger/LauncherAtom$ToState;
    .locals 1

    .line 10360
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->getToLabelState()Lcom/android/launcher3/logger/LauncherAtom$ToState;

    move-result-object v0

    return-object v0
.end method

.method public hasCardinality()Z
    .locals 1

    .line 10255
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->hasCardinality()Z

    move-result v0

    return v0
.end method

.method public hasFromLabelState()Z
    .locals 1

    .line 10302
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->hasFromLabelState()Z

    move-result v0

    return v0
.end method

.method public hasLabelInfo()Z
    .locals 1

    .line 10397
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->hasLabelInfo()Z

    move-result v0

    return v0
.end method

.method public hasToLabelState()Z
    .locals 1

    .line 10349
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->hasToLabelState()Z

    move-result v0

    return v0
.end method

.method public setCardinality(I)Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 10276
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->copyOnWrite()V

    .line 10277
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->-$$Nest$msetCardinality(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;I)V

    .line 10278
    return-object p0
.end method

.method public setFromLabelState(Lcom/android/launcher3/logger/LauncherAtom$FromState;)Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$FromState;

    .line 10323
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->copyOnWrite()V

    .line 10324
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->-$$Nest$msetFromLabelState(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;Lcom/android/launcher3/logger/LauncherAtom$FromState;)V

    .line 10325
    return-object p0
.end method

.method public setLabelInfo(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 10434
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->copyOnWrite()V

    .line 10435
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->-$$Nest$msetLabelInfo(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;Ljava/lang/String;)V

    .line 10436
    return-object p0
.end method

.method public setLabelInfoBytes(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 10461
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->copyOnWrite()V

    .line 10462
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->-$$Nest$msetLabelInfoBytes(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;Lcom/google/protobuf/ByteString;)V

    .line 10463
    return-object p0
.end method

.method public setToLabelState(Lcom/android/launcher3/logger/LauncherAtom$ToState;)Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$ToState;

    .line 10370
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->copyOnWrite()V

    .line 10371
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->-$$Nest$msetToLabelState(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;Lcom/android/launcher3/logger/LauncherAtom$ToState;)V

    .line 10372
    return-object p0
.end method
