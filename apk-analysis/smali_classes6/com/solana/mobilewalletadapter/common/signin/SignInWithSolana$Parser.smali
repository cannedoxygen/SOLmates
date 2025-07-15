.class Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Parser;
.super Ljava/lang/Object;
.source "SignInWithSolana.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Parser"
.end annotation


# static fields
.field static final ADDRESS:Ljava/lang/String; = "\\n(?<address>[a-zA-Z0-9]{32,44})(?:\\n{1,2}|$)"

.field static final CHAIN_ID:Ljava/lang/String; = "(?:\\nChain ID: (?<chainId>[0-9]+))?"

.field static final DATETIME:Ljava/lang/String; = "(?:[0-9]+)-(?:0[1-9]|1[012])-(?:0[1-9]|[12][0-9]|3[01])[Tt](?:[01][0-9]|2[0-3]):(?:[0-5][0-9]):(?:[0-5][0-9]|60)(?:.[0-9]+)?(?:(?:[Zz])|(?:[+|-](?:[01][0-9]|2[0-3]):[0-5][0-9]))"

.field static final DOMAIN:Ljava/lang/String; = "(?<domain>([^?#]*)) wants you to sign in with your Solana account:"

.field static final EXPIRATION_TIME:Ljava/lang/String; = "(?:\\nExpiration Time: (?<expirationTime>(?:[0-9]+)-(?:0[1-9]|1[012])-(?:0[1-9]|[12][0-9]|3[01])[Tt](?:[01][0-9]|2[0-3]):(?:[0-5][0-9]):(?:[0-5][0-9]|60)(?:.[0-9]+)?(?:(?:[Zz])|(?:[+|-](?:[01][0-9]|2[0-3]):[0-5][0-9]))))?"

.field static final GROUP_ADDRESS:I = 0x3

.field static final GROUP_CHAIN_ID:I = 0x8

.field static final GROUP_DOMAIN:I = 0x1

.field static final GROUP_EXPIRATION_TIME:I = 0xb

.field static final GROUP_ISSUED_AT:I = 0xa

.field static final GROUP_NONCE:I = 0x9

.field static final GROUP_NOT_BEFORE:I = 0xc

.field static final GROUP_REQUEST_ID:I = 0xd

.field static final GROUP_RESOURCES:I = 0xe

.field static final GROUP_STATEMENT:I = 0x5

.field static final GROUP_URI:I = 0x6

.field static final GROUP_VERSION:I = 0x7

.field static final ISSUED_AT:Ljava/lang/String; = "(?:\\nIssued At: (?<issuedAt>(?:[0-9]+)-(?:0[1-9]|1[012])-(?:0[1-9]|[12][0-9]|3[01])[Tt](?:[01][0-9]|2[0-3]):(?:[0-5][0-9]):(?:[0-5][0-9]|60)(?:.[0-9]+)?(?:(?:[Zz])|(?:[+|-](?:[01][0-9]|2[0-3]):[0-5][0-9]))))?"

.field static final MESSAGE:Ljava/lang/String; = "^(?<domain>([^?#]*)) wants you to sign in with your Solana account:\\n(?<address>[a-zA-Z0-9]{32,44})(?:\\n{1,2}|$)((?<statement>[\\S\\s]+?)(?:\\n|$))??(?:\\nURI: (?<uri>(?:(?:[^:?#]+):)?(?:[^?#\\n]*)?(?:[^?#\\n]*)(?:\\?(?:[^#\\n]*))?(?:#(?:.*))?))?(?:\\nVersion: (?<version>1))?(?:\\nChain ID: (?<chainId>[0-9]+))?(?:\\nNonce: (?<nonce>[a-zA-Z0-9]{8,}))?(?:\\nIssued At: (?<issuedAt>(?:[0-9]+)-(?:0[1-9]|1[012])-(?:0[1-9]|[12][0-9]|3[01])[Tt](?:[01][0-9]|2[0-3]):(?:[0-5][0-9]):(?:[0-5][0-9]|60)(?:.[0-9]+)?(?:(?:[Zz])|(?:[+|-](?:[01][0-9]|2[0-3]):[0-5][0-9]))))?(?:\\nExpiration Time: (?<expirationTime>(?:[0-9]+)-(?:0[1-9]|1[012])-(?:0[1-9]|[12][0-9]|3[01])[Tt](?:[01][0-9]|2[0-3]):(?:[0-5][0-9]):(?:[0-5][0-9]|60)(?:.[0-9]+)?(?:(?:[Zz])|(?:[+|-](?:[01][0-9]|2[0-3]):[0-5][0-9]))))?(?:\\nNot Before: (?<notBefore>(?:[0-9]+)-(?:0[1-9]|1[012])-(?:0[1-9]|[12][0-9]|3[01])[Tt](?:[01][0-9]|2[0-3]):(?:[0-5][0-9]):(?:[0-5][0-9]|60)(?:.[0-9]+)?(?:(?:[Zz])|(?:[+|-](?:[01][0-9]|2[0-3]):[0-5][0-9]))))?(?:\\nRequest ID: (?<requestId>[-._~!$&\'()*+,;=:@%a-zA-Z0-9]*))?(?:\\nResources:(?<resources>(\\n- (?:(?:[^:?#]+):)?(?:[^?#\\n]*)?(?:[^?#\\n]*)(?:\\?(?:[^#\\n]*))?(?:#(?:.*))?)+))?$"

.field static final NONCE:Ljava/lang/String; = "(?:\\nNonce: (?<nonce>[a-zA-Z0-9]{8,}))?"

.field static final NOT_BEFORE:Ljava/lang/String; = "(?:\\nNot Before: (?<notBefore>(?:[0-9]+)-(?:0[1-9]|1[012])-(?:0[1-9]|[12][0-9]|3[01])[Tt](?:[01][0-9]|2[0-3]):(?:[0-5][0-9]):(?:[0-5][0-9]|60)(?:.[0-9]+)?(?:(?:[Zz])|(?:[+|-](?:[01][0-9]|2[0-3]):[0-5][0-9]))))?"

.field static final REQUEST_ID:Ljava/lang/String; = "(?:\\nRequest ID: (?<requestId>[-._~!$&\'()*+,;=:@%a-zA-Z0-9]*))?"

.field static final RESOURCES:Ljava/lang/String; = "(?:\\nResources:(?<resources>(\\n- (?:(?:[^:?#]+):)?(?:[^?#\\n]*)?(?:[^?#\\n]*)(?:\\?(?:[^#\\n]*))?(?:#(?:.*))?)+))?"

.field static final STATEMENT:Ljava/lang/String; = "((?<statement>[\\S\\s]+?)(?:\\n|$))??"

.field static final URI:Ljava/lang/String; = "(?:(?:[^:?#]+):)?(?:[^?#\\n]*)?(?:[^?#\\n]*)(?:\\?(?:[^#\\n]*))?(?:#(?:.*))"

.field static final URI_LINE:Ljava/lang/String; = "(?:\\nURI: (?<uri>(?:(?:[^:?#]+):)?(?:[^?#\\n]*)?(?:[^?#\\n]*)(?:\\?(?:[^#\\n]*))?(?:#(?:.*))?))?"

.field static final VERSION:Ljava/lang/String; = "(?:\\nVersion: (?<version>1))?"

.field public static final messagePattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 406
    const-string v0, "^(?<domain>([^?#]*)) wants you to sign in with your Solana account:\\n(?<address>[a-zA-Z0-9]{32,44})(?:\\n{1,2}|$)((?<statement>[\\S\\s]+?)(?:\\n|$))??(?:\\nURI: (?<uri>(?:(?:[^:?#]+):)?(?:[^?#\\n]*)?(?:[^?#\\n]*)(?:\\?(?:[^#\\n]*))?(?:#(?:.*))?))?(?:\\nVersion: (?<version>1))?(?:\\nChain ID: (?<chainId>[0-9]+))?(?:\\nNonce: (?<nonce>[a-zA-Z0-9]{8,}))?(?:\\nIssued At: (?<issuedAt>(?:[0-9]+)-(?:0[1-9]|1[012])-(?:0[1-9]|[12][0-9]|3[01])[Tt](?:[01][0-9]|2[0-3]):(?:[0-5][0-9]):(?:[0-5][0-9]|60)(?:.[0-9]+)?(?:(?:[Zz])|(?:[+|-](?:[01][0-9]|2[0-3]):[0-5][0-9]))))?(?:\\nExpiration Time: (?<expirationTime>(?:[0-9]+)-(?:0[1-9]|1[012])-(?:0[1-9]|[12][0-9]|3[01])[Tt](?:[01][0-9]|2[0-3]):(?:[0-5][0-9]):(?:[0-5][0-9]|60)(?:.[0-9]+)?(?:(?:[Zz])|(?:[+|-](?:[01][0-9]|2[0-3]):[0-5][0-9]))))?(?:\\nNot Before: (?<notBefore>(?:[0-9]+)-(?:0[1-9]|1[012])-(?:0[1-9]|[12][0-9]|3[01])[Tt](?:[01][0-9]|2[0-3]):(?:[0-5][0-9]):(?:[0-5][0-9]|60)(?:.[0-9]+)?(?:(?:[Zz])|(?:[+|-](?:[01][0-9]|2[0-3]):[0-5][0-9]))))?(?:\\nRequest ID: (?<requestId>[-._~!$&\'()*+,;=:@%a-zA-Z0-9]*))?(?:\\nResources:(?<resources>(\\n- (?:(?:[^:?#]+):)?(?:[^?#\\n]*)?(?:[^?#\\n]*)(?:\\?(?:[^#\\n]*))?(?:#(?:.*))?)+))?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Parser;->messagePattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parseMessage(Ljava/lang/String;)Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;
    .locals 30
    .param p0, "message"    # Ljava/lang/String;

    .line 423
    sget-object v0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Parser;->messagePattern:Ljava/util/regex/Pattern;

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 425
    .local v0, "payloadMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 426
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16

    .line 427
    .local v16, "domain":Ljava/lang/String;
    if-eqz v16, :cond_4

    .line 431
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    .line 432
    .local v17, "addressStr":Ljava/lang/String;
    if-eqz v17, :cond_3

    .line 435
    invoke-static/range {v17 .. v17}, Lcom/solana/mobilewalletadapter/common/util/Base58;->decode(Ljava/lang/String;)[B

    move-result-object v18

    .line 437
    .local v18, "address":[B
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v19

    .line 438
    .local v19, "statement":Ljava/lang/String;
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v20

    .line 439
    .local v20, "uriString":Ljava/lang/String;
    if-eqz v20, :cond_0

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move-object v7, v3

    .line 441
    .local v7, "uri":Landroid/net/Uri;
    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    .line 442
    .local v21, "version":Ljava/lang/String;
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    .line 443
    .local v22, "chainId":Ljava/lang/String;
    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v23

    .line 444
    .local v23, "nonce":Ljava/lang/String;
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v24

    .line 445
    .local v24, "issuedAt":Ljava/lang/String;
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v25

    .line 446
    .local v25, "expirationTime":Ljava/lang/String;
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v26

    .line 447
    .local v26, "notBefore":Ljava/lang/String;
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v27

    .line 449
    .local v27, "requestId":Ljava/lang/String;
    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    .line 451
    .local v15, "resourcesString":Ljava/lang/String;
    if-nez v15, :cond_1

    .line 452
    const/4 v2, 0x0

    .local v2, "resources":[Landroid/net/Uri;
    goto :goto_2

    .line 454
    .end local v2    # "resources":[Landroid/net/Uri;
    :cond_1
    const-string v3, "\n- "

    invoke-virtual {v15, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 455
    .local v3, "resourcesSplit":[Ljava/lang/String;
    array-length v4, v3

    sub-int/2addr v4, v2

    new-array v2, v4, [Landroid/net/Uri;

    .line 456
    .restart local v2    # "resources":[Landroid/net/Uri;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_2

    .line 457
    add-int/lit8 v5, v4, 0x1

    aget-object v5, v3, v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v2, v4

    .line 456
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 461
    .end local v3    # "resourcesSplit":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_2
    :goto_2
    new-instance v28, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;

    move-object/from16 v3, v28

    move-object/from16 v4, v16

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v8, v21

    move-object/from16 v9, v22

    move-object/from16 v10, v23

    move-object/from16 v11, v24

    move-object/from16 v12, v25

    move-object/from16 v13, v26

    move-object/from16 v14, v27

    move-object/from16 v29, v15

    .end local v15    # "resourcesString":Ljava/lang/String;
    .local v29, "resourcesString":Ljava/lang/String;
    move-object v15, v2

    invoke-direct/range {v3 .. v15}, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;-><init>(Ljava/lang/String;[BLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/net/Uri;)V

    return-object v28

    .line 433
    .end local v2    # "resources":[Landroid/net/Uri;
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v18    # "address":[B
    .end local v19    # "statement":Ljava/lang/String;
    .end local v20    # "uriString":Ljava/lang/String;
    .end local v21    # "version":Ljava/lang/String;
    .end local v22    # "chainId":Ljava/lang/String;
    .end local v23    # "nonce":Ljava/lang/String;
    .end local v24    # "issuedAt":Ljava/lang/String;
    .end local v25    # "expirationTime":Ljava/lang/String;
    .end local v26    # "notBefore":Ljava/lang/String;
    .end local v27    # "requestId":Ljava/lang/String;
    .end local v29    # "resourcesString":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Failed to parse message: address not found"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 428
    .end local v17    # "addressStr":Ljava/lang/String;
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Failed to parse message: domain not found"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 464
    .end local v16    # "domain":Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Input is not a valid SIWS message"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
